.class public final Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mProcessStats:Lcom/android/server/am/ProcessStatsService;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V
    .locals 0

    .line 15652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15653
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 15654
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 15658
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->writeStateAsync()V

    return-void
.end method
