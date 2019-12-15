# Objective:
	Objective of this test is to evaluate the Kubernetes knowledge of an applicant in terms of handling various tasks related to installation, monitoring and maintenance of an application. Along with this, the test would also allow the evaluator to gauge automation skills of the candidate. There is no right or wrong answers, just solutions which might be more / less elegant / idiomatic. Though recommendation is to use GCP, but you may use other public cloud provider like AWS or Azure.

# Tasks:
	1. Create a Kubernetes cluster on GCP
	2. Install nginx ingress controller on the cluster. For now, we consider that the user will add public IP of ingress LoadBalancer to their /etc/hosts file for all hostnames to be used. So do not worry about DNS resolution.
	3. On this cluster, create namespaces called staging and production.
	4. Install [guest-book](https://github.com/kubernetes/examples/tree/master/guestbook) application on both namespaces.
	5. Expose staging application on hostname staging-guestbook.proengg.io
	6. Expose production application on hostname guestbook.proengg.io
	7. Implement a pod autoscaler on both namespaces, which will scale frontend pod replicas up and down, based on CPU utilization of pods. 
	8. Write a script, which will demonstrate how the pods are scaling up and down by increasing/decreasing load on existing pods.
	9. Write a wrapper script, which does all the steps above. Mention any pre-requisites in the README.md at the root of your repo.
	10. The evaluator will proceed by going over the steps mentioned in the README. So try to make this as automated as possible.
	11. In the context of above test, please explain the following:
		- What was the node size chosen for the Kubernetes nodes? And why?
		- What method was chosen to install the demo application and ingress controller on the cluster, justify the method used
	12. What would be your chosen solution to monitor the application on the cluster and why?
	13. What additional components / plugins would you install on the cluster to manage it better? 


