.class public Lcom/android/server/timedetector/ServiceConfigAccessorImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "ServiceConfigAccessorImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$1;->this$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$1;->this$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    invoke-static {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->-$$Nest$mhandleConfigurationInternalChangeOnMainThread(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;)V

    return-void
.end method
