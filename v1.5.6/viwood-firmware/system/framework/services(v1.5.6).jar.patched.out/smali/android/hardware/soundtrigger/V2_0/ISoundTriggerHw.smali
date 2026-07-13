.class public interface abstract Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
.super Ljava/lang/Object;
.source "ISoundTriggerHw.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 18
    :cond_0
    const-string v1, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 20
    instance-of v3, v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    if-eqz v3, :cond_1

    .line 21
    check-cast v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    return-object v2

    .line 24
    :cond_1
    new-instance v2, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Proxy;

    invoke-direct {v2, p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 27
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_2
    if-ge v4, v3, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    .line 28
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
    .locals 1

    .line 57
    const-string v0, "android.hardware.soundtrigger@2.0::ISoundTriggerHw"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Z)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
    .locals 1

    .line 64
    const-string v0, "default"

    invoke-static {v0, p0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->getService(Ljava/lang/String;Z)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
.end method

.method public abstract getProperties(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$getPropertiesCallback;)V
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
.end method

.method public abstract loadPhraseSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$PhraseSoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadPhraseSoundModelCallback;)V
.end method

.method public abstract loadSoundModel(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$SoundModel;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$loadSoundModelCallback;)V
.end method

.method public abstract startRecognition(ILandroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback;I)I
.end method

.method public abstract stopRecognition(I)I
.end method

.method public abstract unloadSoundModel(I)I
.end method
