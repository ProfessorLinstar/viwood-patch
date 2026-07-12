.class public final synthetic Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$1;->$r8$lambda$Xv0rzRrxYVvZ3ael2cDamJtHe_M(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method
