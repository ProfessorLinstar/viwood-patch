.class public Lcom/android/server/people/prediction/AppTargetPredictor;
.super Ljava/lang/Object;
.source "AppTargetPredictor.java"


# instance fields
.field public final mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mCallingUserId:I

.field public final mDataManager:Lcom/android/server/people/data/DataManager;

.field public final mPredictionContext:Landroid/app/prediction/AppPredictionContext;

.field public final mUpdatePredictionsMethod:Ljava/util/function/Consumer;


# direct methods
.method public static synthetic $r8$lambda$37MgudvkyLT1JZairIFld-5QeGQ(Lcom/android/server/people/prediction/AppTargetPredictor;Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/prediction/AppTargetPredictor;->lambda$onSortAppTargets$1(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hU3NH6A3fXUN4IZ6pl09Jj2hK8I(Lcom/android/server/people/prediction/AppTargetPredictor;Landroid/app/prediction/AppTargetEvent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/people/prediction/AppTargetPredictor;->lambda$onAppTargetEvent$0(Landroid/app/prediction/AppTargetEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;I)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    .line 66
    iput-object p2, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mUpdatePredictionsMethod:Ljava/util/function/Consumer;

    .line 67
    iput-object p3, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mDataManager:Lcom/android/server/people/data/DataManager;

    .line 68
    iput p4, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallingUserId:I

    .line 69
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static create(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)Lcom/android/server/people/prediction/AppTargetPredictor;
    .locals 7

    .line 48
    invoke-virtual {p0}, Landroid/app/prediction/AppPredictionContext;->getUiSurface()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "share"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v1, Lcom/android/server/people/prediction/ShareTargetPredictor;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/people/prediction/ShareTargetPredictor;-><init>(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)V

    return-object v1

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 52
    new-instance p0, Lcom/android/server/people/prediction/AppTargetPredictor;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/people/prediction/AppTargetPredictor;-><init>(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;I)V

    return-object p0
.end method


# virtual methods
.method public getDataManager()Lcom/android/server/people/data/DataManager;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mDataManager:Lcom/android/server/people/data/DataManager;

    return-object p0
.end method

.method public getPredictionContext()Landroid/app/prediction/AppPredictionContext;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    return-object p0
.end method

.method public getUpdatePredictionsMethod()Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;>;"
        }
    .end annotation

    .line 106
    iget-object p0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mUpdatePredictionsMethod:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public final synthetic lambda$onAppTargetEvent$0(Landroid/app/prediction/AppTargetEvent;)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/people/prediction/AppTargetPredictor;->reportAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    return-void
.end method

.method public final synthetic lambda$onSortAppTargets$1(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/android/server/people/prediction/AppTargetPredictor;->sortTargets(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/prediction/AppTargetPredictor;Landroid/app/prediction/AppTargetEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLaunchLocationShown(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onRequestPredictionUpdate()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/people/prediction/AppTargetPredictor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSortAppTargets(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/people/prediction/AppTargetPredictor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/prediction/AppTargetPredictor;Ljava/util/List;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public predictTargets()V
    .locals 0

    .line 0
    return-void
.end method

.method public reportAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public sortTargets(Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 0

    .line 125
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public updatePredictions(Ljava/util/List;)V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mUpdatePredictionsMethod:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
