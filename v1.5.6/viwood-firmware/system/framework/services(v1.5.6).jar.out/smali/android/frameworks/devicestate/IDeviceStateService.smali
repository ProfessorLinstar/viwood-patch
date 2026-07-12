.class public interface abstract Landroid/frameworks/devicestate/IDeviceStateService;
.super Ljava/lang/Object;
.source "IDeviceStateService.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 249
    const-string v2, "android$frameworks$devicestate$IDeviceStateService"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/frameworks/devicestate/IDeviceStateService;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract registerListener(Landroid/frameworks/devicestate/IDeviceStateListener;)V
.end method

.method public abstract unregisterListener(Landroid/frameworks/devicestate/IDeviceStateListener;)V
.end method
