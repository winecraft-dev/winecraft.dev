Raspberry Pi NAS
3D printing an enclosure for my 4TB File Storage Server.
1770064953
## Catching Up 
Hey, it's been a long time since I've posted anything onto my website. When I first went live in the summer of 2022, I was settling into NYC and waiting to start my first SWE job at Capital One. Now, 3.5 years later, I'm getting back into coding, dusting off this website, and searching for a new job back in Software.

I'm not really sure why I setup this website back then. I was definitely bored, probably excited to get into the realm of real software engineering, and maybe hoping to consistently do my own creative coding projects. For the first few months, I did a decent job of documenting a few projects from that summer and college beforehand. But since then, anyone who stumbled onto this website could be left thinking this was just another graveyard portfolio site hosted to get that first job.

I won't lie, I am looking for a job. I'm currently unemployed after leaving my last job serving at a Chinese Restaurant. I won't get into why I left Software Engineering because the reasons are cliche and self-explanatory. But since I stopped coding, I've tried holding onto my engineering mindset by working on projects focused on electronics and 3d printing.

This post about my 3D printed file storage server may or may not be the first of many. I cannot guarantee that there will be more posts, but I hope that by posting here, I keep myself accountable and consistent, rekindle my creativity and passion, and eventually put myself back into the profession I first loved.

## The Network Attached Storage
I've been meaning to get out of the Google Cloud ecosystem. Also, I have ~50GB of photos backed up from my phone and my dad is holding onto a few hundred GBs of photos. Instead of spending money on a continuous cloud subscription, why not store them at home in my own NAS?

At my home there is a 4TB hard drive, a Raspberry Pi, and a Sata/USB converter. I'll assemble an enclosure for them and have it running 24/7 as a basic Samba fileshare.

## Designing
Design objectives:

- Hold a 3.5" hard drive
- Mount a Raspberry Pi 5
- Accessible Raspberry Pi IO
- Space to run power cables
- Fan intake and airflow out the back
- Easy to service with screws allowing access to the internals

The whole case will be designed in Onshape to be 3d printed. The pieces will be held together by screws or snap fits.

### Hard Drive Cage
The cage holds the hard drive into place using 4 tabs that snap into the screw holes of the hard drive. The shield on top provides standoffs to screw in the Raspberry Pi. The shield is attached onto the cage using M3 screws into heated inserts. A power plug can be snapped into place on the corner of the shield.
![Hard Drive Cage](/raspberry-pi-nas/hdd-cage.png)

### Case
The case encloses the hard drive cage, which attaches using M3 screws into heated inserts. The lid of the case slides into place from the rear and is held into place using more M3 screws.
![Case Photo](/raspberry-pi-nas/case.png)

### Fan Cover
A fan at the front of the case intakes air, pushing it out the rear. The fan is screwed in and a filter cover snaps into place in front of it to prevent dust from getting sucked in.
![Fan Filter](/raspberry-pi-nas/fan-filter.png)

### Rear IO Cover
An IO shield protects the back of the case while exposing the Raspberry Pi's IO and the power plug. This snaps into the case.
![Rear IO](/raspberry-pi-nas/rear-io.png)

### Full Assembly
![Video Demo of Full Assembly](/raspberry-pi-nas/assembly.gif)

## Printing
The materials I printed in:

- Hard Drive Cage in White ABS
- Case in Marble colored PLA
- Fan Cover in Black ABS
- Rear IO Cover in Black ABS

I only figured out halfway through that the Bambu Labs P1S can do timelapses, sorry...

## Assembly
Here's the shield right after I put on the Raspberry Pi.
![Shield with Raspberry Pi](/raspberry-pi-nas/installed-raspberry-pi.jpg)

Then I finished up the wiring and closed up the case. The SATA/USB connector has to feed out of the case and back to the hard drive.
![Assembled Rear IO Cover](/raspberry-pi-nas/wiring-done.jpg)

### Final Product
And finally, the finished product sitting in my room. Pardon the extremely loud fan.
<iframe width="560" height="315" src="https://www.youtube.com/embed/hTYhFRkeC_A?si=k1mcjDg3TNflooUG" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Final Notes and Improvements
With the NAS all setup, I've gone ahead and migrated my photos to the Samba fileshare. In the meantime, there are a few things I'd like to improve:

- Space for a 2+ hard drives. Right now the only redundancy is still on Google Cloud
- Turning down the fan. It's currently running at 100% but I'm sure I can ramp the fans for high temperatures only
- Redesigning the fan cover. Definitely filtering air, but the way the air passes through makes it whistle
- A power switch that gracefully shuts down the Raspberry Pi

I'll get around to that... maybe in another post. Anyways, thanks for reading!
