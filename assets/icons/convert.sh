for i in *.tiff;do
sips -s format tiff $i --out pngs/$i.png;
done