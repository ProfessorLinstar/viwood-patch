.class public interface abstract Landroid/hardware/broadcastradio/IBroadcastRadio;
.super Ljava/lang/Object;
.source "IBroadcastRadio.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 706
    const-string v2, "android$hardware$broadcastradio$IBroadcastRadio"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getAmFmRegionConfig(Z)Landroid/hardware/broadcastradio/AmFmRegionConfig;
.end method

.method public abstract getDabRegionConfig()[Landroid/hardware/broadcastradio/DabTableEntry;
.end method

.method public abstract getImage(I)[B
.end method

.method public abstract getParameters([Ljava/lang/String;)[Landroid/hardware/broadcastradio/VendorKeyValue;
.end method

.method public abstract getProperties()Landroid/hardware/broadcastradio/Properties;
.end method

.method public abstract isConfigFlagSet(I)Z
.end method

.method public abstract registerAnnouncementListener(Landroid/hardware/broadcastradio/IAnnouncementListener;[B)Landroid/hardware/broadcastradio/ICloseHandle;
.end method

.method public abstract seek(ZZ)V
.end method

.method public abstract setConfigFlag(IZ)V
.end method

.method public abstract setParameters([Landroid/hardware/broadcastradio/VendorKeyValue;)[Landroid/hardware/broadcastradio/VendorKeyValue;
.end method

.method public abstract setTunerCallback(Landroid/hardware/broadcastradio/ITunerCallback;)V
.end method

.method public abstract startProgramListUpdates(Landroid/hardware/broadcastradio/ProgramFilter;)V
.end method

.method public abstract step(Z)V
.end method

.method public abstract stopProgramListUpdates()V
.end method

.method public abstract tune(Landroid/hardware/broadcastradio/ProgramSelector;)V
.end method

.method public abstract unsetTunerCallback()V
.end method
