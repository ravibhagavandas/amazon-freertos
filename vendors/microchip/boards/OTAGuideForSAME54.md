# FreeRTOS Over-the-Air Updates

Over-the-air (OTA) updates allow you to deploy ﬁrmware updates to one
or more devices in your ﬂeet. Although OTA updates were designed to
update device ﬁrmware, you can use them to send any ﬁles to one or
more devices registered with AWS IoT. When you send updates over the
air, we recommend that you digitally sign them so that the devices
that receive the ﬁles can verify they haven\'t been tampered with en
route.

You can use [Code Signing for AWS
IoT](https://docs.aws.amazon.com/signer/latest/developerguide/Welcome.html)
to sign your ﬁles, or you can sign your ﬁles with your own code-
signing tools.
>
When you create an OTA update, the OTA Update Manager service creates an [AWS IoT
job](https://docs.aws.amazon.com/iot/latest/developerguide/iot-jobs.html)
to notify your devices that an update is available. The OTA demo application runs on your device and creates a FreeRTOS task that
subscribes to notiﬁcation topics for AWS IoT jobs and listens for update messages. When an update is available, the OTA Agent publishes
requests to AWS IoT and receives updates using the MQTT protocol( Microchip supports MQTT only). The OTA Agent checks
the digital signature of the downloaded ﬁles and, if the ﬁles are valid, installs the ﬁrmware update. 

FreeRTOS over-the-air updates make it possible for you to:

-   Digitally sign ﬁrmware before deployment.

-   Deploy new ﬁrmware images to a single device, a group of devices, or
    your entire ﬂeet.

-   Deploy ﬁrmware to devices as they are added to groups, reset, or
    reprovisioned.

-   Verify the authenticity and integrity of new ﬁrmware after it\'s
    deployed to devices.

-   Monitor the progress of a deployment.

-   Debug a failed deployment.

## Tagging OTA resources

To help you manage your OTA resources, you can optionally assign your
own metadata to updates and streams in the form of tags. Tags make it
possible for you to categorize your AWS IoT resources in diﬀerent ways
(for example, by purpose, owner, or environment). This is useful when
you have many resources of the same type. You can quickly identify a resource based
on the tags you\'ve assigned to it. For more information, see [Tagging Your AWS IoT
Resources](https://docs.aws.amazon.com/iot/latest/developerguide/tagging-iot.html).

## OTA update prerequisites

To use over-the-air (OTA) updates, do the following:

-   Check the
    [Prerequisites for OTA updates using MQTT
    ](#prerequisites-for-ota-updates-using-mqtt).

-   [Create an Amazon S3 bucket to store your update
    ](#create-an-amazon-s3-bucket-to-store-your-update).

-   [Create an OTA Update service role
    ](#create-an-ota-update-service-role).

-   [Create an OTA user policy ](#create-an-ota-user-policy).

-   [Create a code-signing certiﬁcate
    ](#create-a-code-signing-certiﬁcate).

-   If you are using Code Signing for AWS IoT, [Grant access to code
    signing for AWS IoT
    ](#grant-access-to-code-signing-for-aws-iot).

### Prerequisites for OTA updates using MQTT

This section describes the general requirements for using MQTT to
perform over-the-air (OTA updates).

#### Requirements

-   Device ﬁrmware must include the bootloader image as a loadable image in the MPLAB Project.

-   The MPLAB FreeRTOS based project should not be residing in the application region (0x10000) after the bootloader image.

-   FreeRTOS version 202002.00 (Corresponding to [3.2.2](https://github.com/MicrochipTech/amazon-freertos) revision) should be used.

-   The factory image must be programmed initially following the steps mentioned.

#### Conﬁgurations

Only OTA over MQTT is supported currently. Users should use only this configuration.

#### Device speciﬁc conﬁgurations

-   The demo project must be configured to run in the application region (outside of the bootloader memory) with maximum size of 440KB. 

#### Device policy

Each device that receives an OTA update using MQTT must be registered
as a thing in AWS IoT and the thing must have an attached policy like
the one listed here. You can ﬁnd more information about the items in
the \"Action\" and \"Resource\" objects at [AWS IoT Core Policy
Actions](https://docs.aws.amazon.com/iot/latest/developerguide/iot-policy-actions.html)
and [AWS IoT
Core](https://docs.aws.amazon.com/iot/latest/developerguide/iot-action-resources.html)
[Action
Resources](https://docs.aws.amazon.com/iot/latest/developerguide/iot-action-resources.html).

###### Notes

-   The iot:Connect permissions allow your device to connect to AWS IoT
    over MQTT.

-   The iot:Subscribe and iot:Publish permissions on the topics of AWS
    IoT jobs (\.../jobs/\*) allow the connected device to receive job notiﬁcations and job
documents, and to publish the completion state of a job execution.

-   The iot:Subscribe and iot:Publish permissions on the topics of AWS
    IoT OTA streams (\.../ streams/\*) allow the connected device to
    fetch OTA update data from AWS IoT. These permissions are required
    to perform ﬁrmware updates over MQTT.

-   The iot:Receive permissions allow AWS IoT Core to publish messages
    on those topics to the connected device. This permission is checked
    on every delivery of an MQTT message. You can use this permission to
    revoke access to clients that are currently subscribed to a topic.

### Create an Amazon S3 bucket to store your update

OTA update ﬁles are stored in Amazon S3 buckets.
>
If you\'re using Code Signing for AWS IoT, the command that you use to
create a code-signing job takes a source bucket (where the unsigned
ﬁrmware image is located) and a destination bucket (where the signed
ﬁrmware image is written). You can specify the same bucket for the
source and destination. The ﬁle names are changed to GUIDs so the
original ﬁles are not overwritten.

###### To create an Amazon S3 bucket

1.  Sign in to the Amazon S3 console at
    <https://console.aws.amazon.com/s3/>.

2.  Choose **Create bucket**.

3.  Enter a **bucket name**.

4.  Under **Bucket settings for Block Public Access** keep **Block all
    public access** selected to accept the default permissions.

5.  Under **Bucket Versioning**, select **Enable** to keep all versions
    in the same bucket.

6.  Choose **Create bucket**.

For more information about Amazon S3, see [Amazon Simple Storage
Service Console User
Guide](https://docs.aws.amazon.com/AmazonS3/latest/user-guide/).

### Create an OTA Update service role

The OTA Update service assumes this role to create and manage OTA
update jobs on your behalf.

###### To create an OTA service role

1.  Sign in to the <https://console.aws.amazon.com/iam/>.

2.  From the navigation pane, choose **Roles**.

3.  Choose **Create role**.

4.  Under **Select type of trusted entity**, choose **AWS Service**.

5.  Choose **IoT** from the list of AWS services.

6.  Under **Select your use case**, choose **IoT**.

7.  Choose **Next: Tags**.

8.  Choose **Next: Review**.

9.  Enter a role name and description, and then choose **Create role**.

For more information about IAM roles, see [IAM
Roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html).

###### To add OTA update permissions to your OTA service role

1.  In the search box on the IAM console page, enter the name of your
    role, and then choose it from the list.

2.  Choose **Attach policies**.

3.  In the **Search** box, enter \"AmazonFreeRTOSOTAUpdate\", select
    **AmazonFreeRTOSOTAUpdate** from the list of ﬁltered policies, and
    then choose **Attach policy** to attach the policy to your service
    role.

###### To add the required IAM permissions to your OTA service role

1.  In the search box on the IAM console page, enter the name of your
    role, and then choose it from the list.

2.  Choose **Add inline policy**.

3.  Choose the **JSON** tab.

4.  Copy and paste the following policy document into the text box:

Make sure that you replace *your_account_id* with your AWS account ID,
and *your_role_name*
>
with the name of the OTA service role.

5.  Choose **Review policy**.

6.  Enter a name for the policy, and then choose **Create policy**.

###### Note

The following procedure isn\'t required if your Amazon S3 bucket name
begins with \"afr-ota\". If it does, the AWS managed policy
AmazonFreeRTOSOTAUpdate already includes the required permissions.

###### To add the required Amazon S3 permissions to your OTA service role

1.  In the search box on the IAM console page, enter the name of your
    role, and then choose it from the list.

2.  Choose **Add inline policy**.

3.  Choose the **JSON** tab.

4.  Copy and paste the following policy document into the box.

This policy grants your OTA service role permission to read Amazon S3
objects. Make sure that you replace *example-bucket* with the name of
your bucket.

5.  Choose **Review policy**.

6.  Enter a name for the policy, and then choose **Create policy**.

### Create an OTA user policy

You must grant your IAM user permission to perform over-the-air
updates. Your IAM user must have permissions to:

-   Access the S3 bucket where your ﬁrmware updates are stored.

-   Access certiﬁcates stored in AWS Certiﬁcate Manager.

-   Access the AWS IoT Streaming service.

-   Access FreeRTOS OTA updates.

-   Access AWS IoT jobs.

-   Access IAM.

-   Access Code Signing for AWS IoT. See [Grant access to code signing
    for AWS IoT](#grant-access-to-code-signing-for-aws-iot).

-   List FreeRTOS hardware platforms.

To grant your IAM user the required permissions, create an OTA user
policy and then attach it to your IAM user. For more information, see
[IAM
Policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html).

###### To create an OTA user policy

1.  Open the <https://console.aws.amazon.com/iam/console.

2.  In the navigation pane, choose **Users**.

3.  Choose your IAM user from the list.

4.  Choose **Add permissions**.

5.  ######## Choose Attach existing policies directly.

6.  Choose **Create policy**.

7.  Choose the **JSON** tab, and copy and paste the following policy
    document into the policy editor:

Replace *example-bucket* with the name of the Amazon S3 bucket where
your OTA update ﬁrmware image is stored. Replace *your-account-id*
with your AWS account ID. You can ﬁnd your AWS account ID in the upper
right of the console. When you enter your account ID, remove any
dashes (-). Replace *role-name* with the name of the IAM service role
you just created.

8.  Choose **Review policy**.

9.  Enter a name for your new OTA user policy, and then choose **Create
    policy**.

###### To attach the OTA user policy to your IAM user

1.  In the IAM console, in the navigation pane, choose **Users**, and
    then choose your user.

2.  Choose **Add permissions**.

3.  ######## Choose Attach existing policies directly.

4.  Search for the OTA user policy you just created and select the check
    box next to it.

5.  Choose **Next: Review**.

6.  Choose **Add permissions**.

### Create a code-signing certiﬁcate

To digitally sign ﬁrmware images, you need a code-signing certiﬁcate
and private key. For testing purposes, you can create a self‐signed
certiﬁcate and private key. For production environments, purchase a
certiﬁcate through a well known certiﬁcate authority (CA).
>
The Microchip SAME54-XPRO supports a self-signed SHA256 with
ECDSA code-signing certiﬁcate and the procedure is same as the Windows Simulator with ECC608.

###### Note

Inside vendors\microchip\boards\same54_xpro\bootloader\bootloader\utility\codesigner_cert_utility folder,
follow the steps mentioned [here](https://docs.aws.amazon.com/freertos/latest/userguide/ota-code-sign-cert-win.html) for creating code signing certificate.

### Grant access to code signing for AWS IoT

In production environments, you should digitally sign your ﬁrmware
update to ensure the authenticity and integrity of the update. You can
sign your update manually or you can use Code Signing for AWS IoT to
sign your code. To use Code Signing for FreeRTOS, you must grant your
IAM user account access to Code Signing for FreeRTOS.

###### To grant your IAM user account permissions for code signing for AWS IoT

1.  Sign in to the <https://console.aws.amazon.com/iam/>.

2.  In the navigation pane, choose **Policies**.

3.  Choose **Create Policy**.

4.  On the **JSON** tab, copy and paste the following JSON document into
    the policy editor. This policy allows the IAM user access to all
    code-signing operations.

5.  Choose **Review policy**.

6.  Enter a policy name and description, and then choose **Create
    policy**.

7.  In the navigation pane, choose **Users**.

8.  Choose your IAM user account.

9.  On the **Permissions** tab, choose **Add permissions**.

10. Choose **Attach existing policies directly**, and then select the
    check box next to the code-signing policy you just created.

11. Choose **Next: Review**.

12. Choose **Add permissions**.


## OTA tutorial

This section contains a tutorial for updating ﬁrmware on devices
running FreeRTOS using OTA updates. In addition to ﬁrmware images, you
can use an OTA update to send any type of ﬁle to a device connected to
AWS IoT.
>
You can use the AWS IoT console or the AWS CLI to create an OTA
update. The console is the easiest way to get started with OTA because
it does a lot of the work for you. 

###### To create an OTA update

1.  Deploy an initial version of your ﬁrmware to one or more devices.

2.  Verify that the ﬁrmware is running correctly.

3.  When a ﬁrmware update is required, make the code changes and build
    the new image.

4.  Since we are using Code Signing for AWS IoT, upload your unsigned ﬁrmware image to an Amazon
    S3 bucket.

5.  Create an OTA update.

The FreeRTOS OTA agent on the device receives the updated ﬁrmware image
and veriﬁes the digital signature, and version number of the
new image. If the ﬁrmware update is veriﬁed, the device is reset and,
based on application-deﬁned logic, commits the update. If your devices
are not running FreeRTOS, you must implement an OTA agent that runs on
your devices.
>
###### Installing the initial ﬁrmware


To update ﬁrmware, you must install an initial version of the ﬁrmware
that uses the OTA Agent library to listen for OTA update jobs. If you
are not running FreeRTOS, skip this step. You must copy your OTA Agent
implementation onto your devices instead.

#### Install the initial version of ﬁrmware on the Microchip SAME54-XPRO

###### To burn the demo application onto your board

1.  Make sure you have the SRecord tools installed from [Source
    Forge](http://srecord.sourceforge.net/). Verify that the directory
    that contains the srec_cat and srec_info programs is in your system
    path.

2. Rebuild the bootloader project from the location
		projects\microchip\same54_xpro\mplab\bootloader\firmware\bootloader.X.
3. The above project should use the code signer certificate created earlier and the output available in
		projects\microchip\same54_xpro\mplab\bootloader\firmware\bootloader.X\dist\same54_xpro\production\bootloader.X.production.hex
	should be copied to
		vendors\microchip\boards\same54_xpro\bootloader\bootloader\utility folder.
4. The above step will ensure the demo project would be built faster. Place the code signer certificate in PEM format under
	demos\include\aws_ota_codesigner_certificate.h.

5.  Update the application version for the
    factory image.

6.  Build the aws_demos project.

4.  Run the factory_image_generator.py script to generate the factory
    image.

This command takes the following parameters:

-   mplab.production.bin: The application binary.

-   ecdsasigner.key: The code-signing private key.

-   bootloader.X.production.hex: The bootloader hex ﬁle.

When you build the aws_demos project, the application binary image and
bootloader hex ﬁle are built as part of the process. The project
under the projects\microchip\same54_xpro_winc1500\mplab\aws_demos\firmware\aws_demos.X directory contains a
dist/aws_demos/production/ directory that contains an uniﬁed hex ﬁle as well as aws_demos.X.production.X.
You need to run the factory image generator python code from command prompt at
vendors\microchip\boards\same54_xpro\bootloader\bootloader\utility\

>
		python factory_image_generator.py -b <location>/projects/microchip/same54_xpro_winc1500/mplab/aws_demos/firmware/aws_demos.X/dist/aws_demos/production/aws_demos.X.production.bin -p MCHP-Curiosity-PIC32MZEF -k ecdsasigner.key -x <location>\vendors\microchip\boards\same54_xpro\bootloader\bootloader\utility\bootloader.X.production.hex

8.  Use the MPLab IPE tool to program the generated hex ﬁle onto the
    device.

9.  You can check that your factory image works by watching the board\'s
    UART output as the image is uploaded. If everything is set up
    correctly, you should see the image boot successfully:

### Update the version of your ﬁrmware

The OTA Agent included with FreeRTOS checks the version of any update
and installs it only if it is more recent than the existing ﬁrmware
version. The following steps show you how to increment the ﬁrmware
version of the OTA demo application.

1.  Open the aws_demos project in your IDE.

2.  Open demos/include/aws_application_version.h and increment the
    APP_VERSION_BUILD

token value.

3.  Define symbol "CONFIG_OTA_UPDATE_DEMO_ENABLED" in vendors\microchip\boards\same54_xpro\aws_demos\config_files\aws_demo_config.h file.

4.  Rebuild the project.

You must copy your ﬁrmware update (/projects/microchip/same54_xpro_winc1500/mplab/aws_demos/firmware/aws_demos.X/dist/aws_demos/production/aws_demos.X.production.bin) into the Amazon S3 bucket that you
created as described in [Create](#create-an-amazon-s3-bucket-to-store-your-update) [an Amazon
S3 bucket to store your update](#create-an-amazon-s3-bucket-to-store-your-update). 

### Creating an OTA update (AWS IoT console)

1.  In the navigation pane of the AWS IoT console, choose **Manage**,
    and then choose **Jobs**.

2.  Choose **Create**.

3.  Under Create a FreeRTOS Over-the-Air (OTA) update job, choose Create OTA update job.

4.  You can deploy an OTA update to a single device or a group of
    devices. Under **Select devices to update**, choose **Select**. To
    update a single device, choose the **Things** tab. To update a group
    of devices, choose the **Thing Groups** tab.

5.  If you are updating a single device, select the check box next to
    the IoT thing associated with your device. If you are updating a
    group of devices, select the check box next to the thing group
    associated with your devices. Choose **Next**.

6.  Under **Select the protocol for ﬁrmware image transfer**, choose
    **HTTP**, **MQTT**, or choose both to allow each device to determine
    the protocol to use.

7.  ######## Under Select and sign your ﬁrmware image, choose Sign a new ﬁrmware image for me.

8.  Under **Code signing proﬁle**, choose **Create**.

9.  In **Create a code signing proﬁle**, enter a name for your
    code-signing proﬁle.

    a.  Under **Device hardware platform**, choose Windows Simulator (since code signing is same).

b.  Under **Code signing certiﬁcate**, choose **Select** to select a
    previously imported certiﬁcate or

**Import** to import a new certiﬁcate.

c.  Under **Pathname of code signing certiﬁcate on device**, enter the
    fully qualiﬁed path name to the code signing certiﬁcate on your
    device, the current implementation uses a default value irrespective of data provided in this location.

10. Under **Select your ﬁrmware image in S3 or upload it**, choose
    **Select**. A list of your Amazon S3 buckets is displayed. Choose
    the bucket that contains your ﬁrmware update, and then choose your
    ﬁrmware update in the bucket.

###### Note

The Microchip SAME54-XPRO demo projects produces a binary
image with default name of mplab.production.bin, use this ﬁle when you upload an image
for OTA Update.

11. Under **Pathname of ﬁrmware image on device**, enter the fully
    qualiﬁed path name to the location on your device where the OTA job
    will copy the ﬁrmware image. This location is hardcoded, so user can provid any string.

###### Important

12. Under **IAM role for OTA update job**, choose a role according to
    the instructions in [Create an OTA Update service role
    ](#create-an-ota-update-service-role).

13. Choose **Next**.

14. Enter an ID and description for your OTA update job.

15. Under Job type, choose Your job will complete after deploying to the selected devices/groups (snapshot).

16. Choose any appropriate optional conﬁgurations for your job (**Job
    executions rollout**, **Job abort**, **Job executions timeout**, and
    **Tags**).

17. Choose **Create**.

###### To use a previously signed ﬁrmware image

1.  Under Select and sign your ﬁrmware image, choose Select a previously signed ﬁrmware image.

2.  Under **Pathname of ﬁrmware image on device**, enter the fully
    qualiﬁed path name to the location on your device where the OTA job
    will copy the ﬁrmware image. This location varies by platform.

3.  Under **Previous code signing job**, choose **Select**, and then
    choose the previous code-signing job used to sign the ﬁrmware image
    you are using for the OTA update.

###### Using a custom signed ﬁrmware image

1.  Under Select and sign your ﬁrmware image, choose Use my custom signed ﬁrmware image.

2.  Under **Pathname of code signing certiﬁcate on device**, enter the
    fully qualiﬁed path name to the code signing certiﬁcate on your
    device. This path name varies by platform.

3.  Under **Pathname of ﬁrmware image on device**, enter the fully
    qualiﬁed path name to the location on your device where the OTA job
    will copy the ﬁrmware image. This location varies by platform.

4.  Under **Signature**, paste your PEM format signature.

5.  Under **Original hash algorithm**, choose the hash algorithm that
    was used when you created your ﬁle signature.

6.  Under **Original encryption algorithm**, choose the algorithm that
    was used when you created your ﬁle signature.

7.  Under **Select your ﬁrmware image in Amazon S3**, choose the Amazon
    S3 bucket and the signed ﬁrmware image in the Amazon S3 bucket.

After you have speciﬁed the code-signing information, specify the OTA
update job type, service role, and an ID for your update.

###### Note

Connect your serial UART terminal to your device. You should see
output that indicates the device is downloading the updated ﬁrmware.
After the device downloads the updated ﬁrmware, it restarts and then
installs the ﬁrmware. You can see what\'s happening in the UART
terminal.
>
For a tutorial that shows you how to use the console to create an OTA
update, see [Over-the-air
updates](#over-the-air-updates-demo-application).


## OTA troubleshooting

The OTA Update service supports logging with Amazon CloudWatch. You
can use the AWS IoT console to enable and conﬁgure Amazon CloudWatch
logging for OTA updates. For more information, see [Cloudwatch
Logs](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/WhatIsCloudWatchLogs.html).

###### Note
>
To enable logging, you must create an IAM role and conﬁgure OTA update
logging.


## Over-the-air updates demo application

FreeRTOS includes a demo application that demonstrates the
functionality of the over- the-air (OTA) library. The OTA demo
application is located in the *freertos*/demos/ota/
aws_iot_ota_update_demo.c ﬁle. This application can be used by the demo project by defining the symbol 
CONFIG_OTA_UPDATE_DEMO_ENABLED in 
		vendors\microchip\boards\same54_xpro\aws_demos\config_files\aws_demo_config.h 
file.

