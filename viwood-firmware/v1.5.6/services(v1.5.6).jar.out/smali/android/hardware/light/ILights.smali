.class public interface abstract Landroid/hardware/light/ILights;
.super Ljava/lang/Object;
.source "ILights.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 216
    const-string v2, "android$hardware$light$ILights"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/light/ILights;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getLights()[Landroid/hardware/light/HwLight;
.end method

.method public abstract setLightState(ILandroid/hardware/light/HwLightState;)V
.end method
