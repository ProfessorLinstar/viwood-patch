.class public final Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;
.super Ljava/lang/Object;
.source "ComponentController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final mChangedJobs:Landroid/util/ArraySet;

.field public final synthetic this$0:Lcom/android/server/job/controllers/ComponentController;


# direct methods
.method public static bridge synthetic -$$Nest$mreset(Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/ComponentController;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->this$0:Lcom/android/server/job/controllers/ComponentController;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/ComponentController;->-$$Nest$mupdateComponentEnabledStateLocked(Lcom/android/server/job/controllers/ComponentController;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 237
    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->accept(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public final reset()V
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/server/job/controllers/ComponentController$ComponentStateUpdateFunctor;->mChangedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method
