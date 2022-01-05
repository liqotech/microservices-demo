manifests: fixed2clusters fixed3clusters

fixed2clusters:
# flag --load_restrictor LoadRestrictionsNone is used because kustomize by default
# expects base resources to be in or below the building directory. 
# In this case base files are in /release and patch files in /overlays
	kustomize build --load-restrictor LoadRestrictionsNone overlays/fixed-2clusters/ > release/fixed-2clusters.yaml
fixed3clusters:
	kustomize build --load-restrictor LoadRestrictionsNone overlays/fixed-3clusters/ > release/fixed-3clusters.yaml
