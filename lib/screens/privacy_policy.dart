import 'package:flutter/material.dart';

class PrivacyPolicyscreen extends StatelessWidget {
  const PrivacyPolicyscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        centerTitle: true,
        title: const Text(
          "Privacy Policy",
          style: TextStyle(fontFamily: 'custom', fontSize: 18),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 4, right: 1),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Text("""
                
This privacy policy has been compiled to better serve those who are concerned with how their 'Personally Identifiable Information' (PII) is being used online. PII, as described in US privacy law and information security, is information that can be used on its own or with other information to identify, contact, or locate a single person, or to identify an individual in context.
Please read our privacy policy carefully to get a clear understanding of how we collect, use, protect or otherwise handle your Personally Identifiable Information in accordance with our website.What personal information do we collect from the people that visit our blog, website or app?
When ordering or registering on our App/site, as appropriate, you may be asked to enter your email address or other details to help you with your experience.
          
When do we collect information?

We collect information from you when you register on our site, place an order or enter information on our site.
How do we use your information?We may use the information we collect from you when you register, make a purchase, sign up for our newsletter, respond to a survey or marketing communication, surf the website, or use certain other site features in the following ways:

• To personalize your experience and to allow us to deliver the type of content and product offerings in which you are most interested.
• To allow us to better service you in responding to your customer service requests.
  
How do we protect your information?

Your personal information is contained behind secured networks and is only accessible by a limited number of persons who have special access rights to such systems, and are required to keep the information confidential. In addition, all sensitive/credit information you supply is encrypted via Secure Socket Layer (SSL) technology.We implement a variety of security measures when a user places an order enters, submits, or accesses their information to maintain the safety of your personal information.
All transactions are processed through a gateway provider and are not stored or processed on our servers.

Third-party disclosure

We do not sell, trade, or otherwise transfer to outside parties your Personally Identifiable Information unless we provide users with advance notice. This does not include website hosting partners and other parties who assist us in operating our website, conducting our business, or serving our users, so long as those parties agree to keep this information confidential. We may also release information when it's release is appropriate to comply with the law, enforce our site policies, or protect ours or others' rights, property or safety.However, non-personally identifiable visitor information may be provided to other parties for marketing, advertising, or other uses.

Third-party links

We do not include or offer third-party products or services on our App/website.

Google

Google's advertising requirements can be summed up by Google's Advertising Principles. They are put in place to provide a positive experience for users.
We use Google Admob Advertising on our App.
Google, as a third-party vendor, uses cookies to serve ads on our App/site. Google's use of the DART cookie enables it to serve ads to our users based on previous visits to our site and other sites on the Internet. Users may opt-out of the use of the DART cookie by visiting the Google Ad and Content Network privacy policy.
We have implemented the following:

We, along with third-party vendors such as Google use first-party cookies (such as the Google Analytics cookies) and third-party cookies (such as the DoubleClick cookie) or other third-party identifiers together to compile data regarding user interactions with ad impressions and other ad service functions as they relate to our App/website.

      
              """),
          ),
        ),
      ),
    );
  }
}
