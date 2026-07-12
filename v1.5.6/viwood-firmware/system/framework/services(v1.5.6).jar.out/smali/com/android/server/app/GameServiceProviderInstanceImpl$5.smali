.class public Lcom/android/server/app/GameServiceProviderInstanceImpl$5;
.super Landroid/app/IProcessObserver$Stub;
.source "GameServiceProviderInstanceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public static synthetic $r8$lambda$2k6dxdub2zTeeWjyKdFvv2rkX3s(Lcom/android/server/app/GameServiceProviderInstanceImpl$5;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->lambda$onForegroundActivitiesChanged$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mxnw4Fca_ghN8W0ctEZE-nNInnQ(Lcom/android/server/app/GameServiceProviderInstanceImpl$5;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->lambda$onProcessDied$1(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onForegroundActivitiesChanged$0(I)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$monForegroundActivitiesChanged(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V

    return-void
.end method

.method public final synthetic lambda$onProcessDied$1(I)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$monProcessDied(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V

    return-void
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0

    .line 167
    iget-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance p3, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$5;I)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onProcessDied(II)V
    .locals 1

    .line 174
    iget-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$5;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method
