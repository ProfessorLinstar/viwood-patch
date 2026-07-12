.class public Lcom/android/server/am/ActiveServices$MediaProjectionFgsTypeCustomPermission;
.super Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;
.source "ActiveServices.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .locals 0

    .line 2997
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$MediaProjectionFgsTypeCustomPermission;->this$0:Lcom/android/server/am/ActiveServices;

    .line 2998
    const-string p1, "Media projection screen capture permission"

    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I
    .locals 0

    .line 3004
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$MediaProjectionFgsTypeCustomPermission;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerService;->isAllowedMediaProjectionNoOpCheck(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
