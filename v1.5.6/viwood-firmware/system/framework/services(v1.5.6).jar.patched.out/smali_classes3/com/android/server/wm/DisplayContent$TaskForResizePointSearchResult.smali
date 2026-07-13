.class public final Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;
.super Ljava/lang/Object;
.source "DisplayContent.java"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public delta:I

.field public mTmpRect:Landroid/graphics/Rect;

.field public taskForResize:Lcom/android/server/wm/Task;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5251
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public test(Lcom/android/server/wm/Task;)Z
    .locals 4

    .line 5266
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 5270
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 5274
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5283
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->getDimBounds(Landroid/graphics/Rect;)V

    .line 5284
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->delta:I

    neg-int v3, v2

    neg-int v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 5285
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->x:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5286
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->delta:I

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 5288
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->x:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5289
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 5246
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->test(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
