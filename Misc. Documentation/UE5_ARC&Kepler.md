This document is for a *very* niche edge case which most users are unlikely to encounter, and only exists to provide a quick reference to resolve said edge case. I can think of very few reasons why anyone else would be using this, but it may prove useful to *someone* so I'm documenting it here.

I have a particular machine that has both an Intel Arc GPU and an old Nvidia Kepler based GPU. While the Kepler card performs reasonably well for what I use it for, it doesn't support DirectX12 Feature Level 12.0+ (FL11.0 and 11.1 are effectively DX11). The Arc GPU doesn't handle some DX11 titles properly, so together they cover the weak points of both. Unfortunately Unreal Engine 5 treats Intel dGPUs as iGPUs and defaults to the Nvidia card, which is an issue for DX12 titles. It *also* ignores the Windows preferred GPU selection. To resolve this the following launch argument is required:

`-preferIntel`

That should be it. 

Again, this is an edge case, very few people will still he using outdated GPUs for any kind of gaming, or have them in a machine that they're doing gaming on. Very few people will also have two dGPUs in the same machine, and even fewer are likely to mix cards from different families, let alone different generations (Kepler is over 10 years old now). So *if* you happen to be part of that small group, and *if* you happen to run into this issue, I hope this helps.
