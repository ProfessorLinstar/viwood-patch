.class public final Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;
.super Lcom/android/server/permission/access/appop/AppIdAppOpPolicy$OnAppOpModeChangedListener;
.source "AppOpService.kt"


# instance fields
.field public final pendingChanges:Landroid/util/LongSparseArray;

.field public final synthetic this$0:Lcom/android/server/permission/access/appop/AppOpService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/appop/AppOpService;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    .line 399
    invoke-direct {p0}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy$OnAppOpModeChangedListener;-><init>()V

    .line 401
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;->pendingChanges:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public onAppOpModeChanged(IILjava/lang/String;II)V
    .locals 0

    .line 410
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    .line 411
    invoke-static {p3}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p2

    .line 412
    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p1

    .line 414
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;->pendingChanges:Landroid/util/LongSparseArray;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 104
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public onStateMutated()V
    .locals 14

    .line 418
    iget-object v0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;->this$0:Lcom/android/server/permission/access/appop/AppOpService;

    invoke-static {v0}, Lcom/android/server/permission/access/appop/AppOpService;->access$getListeners$p(Lcom/android/server/permission/access/appop/AppOpService;)Landroid/util/ArraySet;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;->pendingChanges:Landroid/util/LongSparseArray;

    .line 100
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 41
    invoke-virtual {v1, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-virtual {v1, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 42
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v8

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_0

    .line 43
    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;

    .line 421
    invoke-static {v5, v6}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v11

    .line 422
    invoke-static {v5, v6}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v12

    .line 428
    const-string v13, "default:0"

    .line 424
    invoke-interface {v10, v11, v12, v7, v13}, Lcom/android/server/appop/AppOpsCheckingServiceInterface$AppOpsModeChangedListener;->onUidModeChanged(IIILjava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 433
    :cond_1
    iget-object p0, p0, Lcom/android/server/permission/access/appop/AppOpService$OnAppIdAppOpModeChangedListener;->pendingChanges:Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clear()V

    return-void
.end method
