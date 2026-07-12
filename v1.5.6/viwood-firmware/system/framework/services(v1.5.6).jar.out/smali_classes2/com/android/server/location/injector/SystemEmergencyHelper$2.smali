.class public Lcom/android/server/location/injector/SystemEmergencyHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "SystemEmergencyHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$2;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 103
    const-string p1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$2;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    invoke-virtual {p0}, Lcom/android/server/location/injector/EmergencyHelper;->dispatchEmergencyStateChanged()V

    return-void
.end method
