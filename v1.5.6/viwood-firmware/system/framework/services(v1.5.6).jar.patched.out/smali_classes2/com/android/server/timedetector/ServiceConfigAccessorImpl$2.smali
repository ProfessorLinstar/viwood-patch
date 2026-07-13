.class public Lcom/android/server/timedetector/ServiceConfigAccessorImpl$2;
.super Landroid/database/ContentObserver;
.source "ServiceConfigAccessorImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$2;->this$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$2;->this$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    invoke-static {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->-$$Nest$mhandleConfigurationInternalChangeOnMainThread(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;)V

    return-void
.end method
