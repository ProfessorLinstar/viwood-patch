.class public interface abstract Landroid/hardware/tv/hdmi/earc/IEArc;
.super Ljava/lang/Object;
.source "IEArc.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 316
    const-string v2, "android$hardware$tv$hdmi$earc$IEArc"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/tv/hdmi/earc/IEArc;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getLastReportedAudioCapabilities(I)[B
.end method

.method public abstract getState(I)B
.end method

.method public abstract isEArcEnabled()Z
.end method

.method public abstract setCallback(Landroid/hardware/tv/hdmi/earc/IEArcCallback;)V
.end method

.method public abstract setEArcEnabled(Z)V
.end method
