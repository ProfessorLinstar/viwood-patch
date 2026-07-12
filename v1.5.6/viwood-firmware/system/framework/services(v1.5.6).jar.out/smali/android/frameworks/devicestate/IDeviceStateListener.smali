.class public interface abstract Landroid/frameworks/devicestate/IDeviceStateListener;
.super Ljava/lang/Object;
.source "IDeviceStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 210
    const-string v2, "android$frameworks$devicestate$IDeviceStateListener"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/frameworks/devicestate/IDeviceStateListener;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onDeviceStateChanged(Landroid/frameworks/devicestate/DeviceStateConfiguration;)V
.end method
