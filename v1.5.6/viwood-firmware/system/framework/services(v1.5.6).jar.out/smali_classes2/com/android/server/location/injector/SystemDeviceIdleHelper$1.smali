.class public Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemDeviceIdleHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemDeviceIdleHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/SystemDeviceIdleHelper;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;->this$0:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/server/location/injector/SystemDeviceIdleHelper$1;->this$0:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    invoke-virtual {p0}, Lcom/android/server/location/injector/DeviceIdleHelper;->notifyDeviceIdleChanged()V

    return-void
.end method
