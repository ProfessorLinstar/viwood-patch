.class public Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;
.super Landroid/os/IUserRestrictionsListener$Stub;
.source "ServiceConfigAccessorImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

.field public final synthetic val$mainThreadHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$QhQzZpHDNys2C73KpTK4fmrmOEo(Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;->lambda$onUserRestrictionsChanged$0(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;->this$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    iput-object p2, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;->val$mainThreadHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/IUserRestrictionsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onUserRestrictionsChanged$0(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;->this$0:Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->-$$Nest$mhandleUserRestrictionsChangeOnMainThread(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;->val$mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
