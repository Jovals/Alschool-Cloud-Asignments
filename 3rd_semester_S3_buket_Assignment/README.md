### Hosting a Static Website using AWS S3 Bucket and CloudFront

# Introdution

Static Website

A static website is like any regular website that is made up of plain HTML files, CSS stylesheets, javascript files and images but it has no dynamic or backend component. It is website that anytime you visit it shows you same thing and no changes.

AWS S3 Bucket
Amazon S3 bucket is a container that provides virtually unlimited storage to store virtually anything like documents, images, videos, application data etc. It can also be used to host staticc websites

AWS CloudFront
AWS CloudFront is a content delivery network service that helps delivery contents like webpages, videos, images and other static and dynamic assets to users with low delay and high transfer speed.

# Steps to Creating an AWS S3 Bucket

- When you login to your AWS account, type S3 bucket on the search bar and and click on S3 dashboard.
  ![Image of S3 search](/New%20folder/S3_bucket1.PNG)

- On the S3 dashboard, click on the create Bucket button to create your S3 Bucket
  ![Image of S3 dashboard](/New%20folder/S3_bucket2.PNG)

- All you have to do next is enter a bucket name that is globally unique and leave the rest of the settings at default, at the end of the form, click on "Create Bucket"
  ![Image of created S3 Bucket](/New%20folder/S3_bucket3.PNG)

- To upload files on the S3 bucket after creating the bucket, click on the name of the S3 bucket, then click on upload. Then click on either "Add folder" or "Add Files" from your local machine.
  ![Image](/New%20folder/S3_bucket4.PNG)

- After selecting the folder of files you wish to upload, click on upload. When the files are uploaded successfully, you will get the image below.
  ![image of upload success](/New%20folder/upload_success.PNG)

- Next step is to create a cloudfront distrubution by first searching for the service on the search bar
  ![image of cloudfront search](/New%20folder/cloudfront1.PNG)

- Click on the "Create a Cloud Front Distribution"
  ![image of cloudfront dashboard](/New%20folder/cloudfront2.PNG)

- Populate the fields of the origin domanin and name with the name of the S3 bucket you create. Then for origin access, select "origin access control settings"
  ![](/New%20folder/cloudfront3.PNG)

- Create a new OAC by just populating the field of the name with the name of your S3 Bucket.
  ![Image of OAC](/New%20folder/cloudfront4.PNG)

- Next is to enable security protections for the Web Application Firewall
  ![Image of Web App Firewall](/New%20folder/cloudfront5.PNG)

- Populate the default root object with "index.html". Leave the rest of the setting on the default setting.
  ![Image of Default Root Object](/New%20folder/cloudfront6.PNG)

- When you click on the create distrubtion button, you get this output. Then you click on the "copy policy" button at the top right.
  ![Image of created CloudFront](/New%20folder/cloudfront7.PNG)

- Naviagete back to your S3 bucket dashboard with the search bar, click on the S3 bucket name, click on permissions.
  ![image of the permissions dashboard](/New%20folder/cloudfront8.PNG)

- At the far right of the Bucket policy, click on the edit button. Then paste the policy you copied from the cloud front dashboard and save.
  ![image of policy](/New%20folder/cloudfront9.PNG)

- Then navigate back to your cloud front distribution and click on the ID name
  ![iamge of cloudfront distribution](/New%20folder/cloudfront10.PNG)

- Copy the Distribution domain name of the cloudfront distribution
  ![Cloudfront distribution dashboard](/New%20folder/cloudfront11.PNG)

- When you paste the distribution domain name on your browser, it renders the static web application as the image below.
  ![image of static website](/New%20folder/cloudfront12.PNG)

## Conclusion

You have successfully rendered a static website on AWS S3 Bucket and AWS CloudFront without setting up server.
