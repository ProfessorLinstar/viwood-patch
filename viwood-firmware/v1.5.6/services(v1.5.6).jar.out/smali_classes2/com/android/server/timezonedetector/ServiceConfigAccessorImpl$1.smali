.class public Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "ServiceConfigAccessorImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$1;->this$0:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$1;->this$0:Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-static {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->-$$Nest$mhandleConfigurationInternalChangeOnMainThread(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    return-void
.end method
