.class public interface abstract Landroid/hardware/usb/IUsb;
.super Ljava/lang/Object;
.source "IUsb.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 396
    const-string v2, "android$hardware$usb$IUsb"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/usb/IUsb;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract enableContaminantPresenceDetection(Ljava/lang/String;ZJ)V
.end method

.method public abstract enableUsbData(Ljava/lang/String;ZJ)V
.end method

.method public abstract enableUsbDataWhileDocked(Ljava/lang/String;J)V
.end method

.method public abstract limitPowerTransfer(Ljava/lang/String;ZJ)V
.end method

.method public abstract queryPortStatus(J)V
.end method

.method public abstract resetUsbPort(Ljava/lang/String;J)V
.end method

.method public abstract setCallback(Landroid/hardware/usb/IUsbCallback;)V
.end method

.method public abstract switchRole(Ljava/lang/String;Landroid/hardware/usb/PortRole;J)V
.end method
