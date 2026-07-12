.class public interface abstract Landroid/hardware/usb/IUsbCallback;
.super Ljava/lang/Object;
.source "IUsbCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 423
    const-string v2, "android$hardware$usb$IUsbCallback"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/usb/IUsbCallback;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getInterfaceHash()Ljava/lang/String;
.end method

.method public abstract getInterfaceVersion()I
.end method

.method public abstract notifyContaminantEnabledStatus(Ljava/lang/String;ZIJ)V
.end method

.method public abstract notifyEnableUsbDataStatus(Ljava/lang/String;ZIJ)V
.end method

.method public abstract notifyEnableUsbDataWhileDockedStatus(Ljava/lang/String;IJ)V
.end method

.method public abstract notifyLimitPowerTransferStatus(Ljava/lang/String;ZIJ)V
.end method

.method public abstract notifyPortStatusChange([Landroid/hardware/usb/PortStatus;I)V
.end method

.method public abstract notifyQueryPortStatus(Ljava/lang/String;IJ)V
.end method

.method public abstract notifyResetUsbPortStatus(Ljava/lang/String;IJ)V
.end method

.method public abstract notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/PortRole;IJ)V
.end method
