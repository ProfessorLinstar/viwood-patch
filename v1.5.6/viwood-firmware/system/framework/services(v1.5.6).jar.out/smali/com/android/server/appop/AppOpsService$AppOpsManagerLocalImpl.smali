.class public final Lcom/android/server/appop/AppOpsService$AppOpsManagerLocalImpl;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Lcom/android/server/appop/AppOpsManagerLocal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    .line 7589
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerLocalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/appop/AppOpsService$AppOpsManagerLocalImpl;-><init>(Lcom/android/server/appop/AppOpsService;)V

    return-void
.end method


# virtual methods
.method public isUidInForeground(I)Z
    .locals 1

    .line 7592
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerLocalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 7593
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerLocalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {p0}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmUidStateTracker(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTracker;->isUidInForeground(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 7594
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
