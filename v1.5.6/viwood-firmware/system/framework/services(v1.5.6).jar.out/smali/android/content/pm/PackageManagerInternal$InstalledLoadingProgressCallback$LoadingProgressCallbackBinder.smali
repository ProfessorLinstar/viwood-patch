.class public Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;
.super Landroid/content/pm/IPackageLoadingProgressCallback$Stub;
.source "PackageManagerInternal.java"


# instance fields
.field public final synthetic this$0:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;)V
    .locals 0

    .line 1214
    iput-object p1, p0, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;->this$0:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;

    invoke-direct {p0}, Landroid/content/pm/IPackageLoadingProgressCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;Landroid/content/pm/PackageManagerInternal-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;-><init>(Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;)V

    return-void
.end method


# virtual methods
.method public onPackageLoadingProgressChanged(F)V
    .locals 2

    .line 1218
    iget-object v0, p0, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;->this$0:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;

    iget-object v0, v0, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder$$ExternalSyntheticLambda0;-><init>()V

    iget-object p0, p0, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;->this$0:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback;

    .line 1221
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 1218
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    .line 1221
    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    .line 1218
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
