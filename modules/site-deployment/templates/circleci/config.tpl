version: 2
jobs:
  deploy-website:
    docker:
      - image: circleci/python:latest-node

    steps:
      - checkout
      - run:
          name: Install awscli
          command: sudo pip install awscli
      - run:
          name: Deploy to S3 bucket
          command: aws s3 sync ./website s3://${website_domain_name}/ 

workflows:
  version: 2
  build:
    jobs:
      - deploy-website