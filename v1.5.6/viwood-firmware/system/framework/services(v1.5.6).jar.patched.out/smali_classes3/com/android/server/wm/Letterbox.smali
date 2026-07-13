.class public Lcom/android/server/wm/Letterbox;
.super Ljava/lang/Object;
.source "Letterbox.java"


# static fields
.field public static final EMPTY_RECT:Landroid/graphics/Rect;

.field public static final ZERO_POINT:Landroid/graphics/Point;


# instance fields
.field public final mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

.field public final mAppCompatReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

.field public final mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mInner:Landroid/graphics/Rect;

.field public final mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mOuter:Landroid/graphics/Rect;

.field public final mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mSurfaceControlFactory:Ljava/util/function/Supplier;

.field public final mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field public final mTransactionFactory:Ljava/util/function/Supplier;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAppCompatLetterboxOverrides(Lcom/android/server/wm/Letterbox;)Lcom/android/server/wm/AppCompatLetterboxOverrides;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppCompatReachabilityPolicy(Lcom/android/server/wm/Letterbox;)Lcom/android/server/wm/AppCompatReachabilityPolicy;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mAppCompatReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOuter(Lcom/android/server/wm/Letterbox;)Landroid/graphics/Rect;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSurfaceControlFactory(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mSurfaceControlFactory:Ljava/util/function/Supplier;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/android/server/wm/Letterbox;->ZERO_POINT:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/server/wm/AppCompatReachabilityPolicy;Lcom/android/server/wm/AppCompatLetterboxOverrides;)V
    .locals 6

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v1, "top"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 63
    new-instance v1, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v2, "left"

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 64
    new-instance v2, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v3, "bottom"

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 65
    new-instance v3, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v4, "right"

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 71
    new-instance v4, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v5, "fullWindow"

    invoke-direct {v4, p0, v5}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 72
    filled-new-array {v1, v0, v3, v2}, [Lcom/android/server/wm/Letterbox$LetterboxSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 88
    iput-object p1, p0, Lcom/android/server/wm/Letterbox;->mSurfaceControlFactory:Ljava/util/function/Supplier;

    .line 89
    iput-object p2, p0, Lcom/android/server/wm/Letterbox;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 90
    iput-object p3, p0, Lcom/android/server/wm/Letterbox;->mAppCompatReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    .line 91
    iput-object p4, p0, Lcom/android/server/wm/Letterbox;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    return-void
.end method


# virtual methods
.method public applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V
    .locals 4

    .line 201
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 203
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->attachInput(Lcom/android/server/wm/WindowState;)V

    .line 206
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove(Landroid/view/SurfaceControl$Transaction;)V

    .line 209
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v0, p0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 210
    invoke-virtual {v2, p3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->attachInput(Lcom/android/server/wm/WindowState;)V

    .line 211
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 178
    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 179
    invoke-virtual {v4, v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove(Landroid/view/SurfaceControl$Transaction;)V

    .line 182
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public getInnerFrame()Landroid/graphics/Rect;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 4

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 121
    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 122
    invoke-virtual {v2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 123
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getWidth()I

    move-result v3

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 124
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getOuterFrame()Landroid/graphics/Rect;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    return-object p0
.end method

.method public hide()V
    .locals 2

    .line 168
    sget-object v0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/server/wm/Letterbox;->ZERO_POINT:Landroid/graphics/Point;

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    return-void
.end method

.method public layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 12

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 109
    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    move-object v11, v6

    .line 110
    iget-object v6, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p2, Landroid/graphics/Rect;->left:I

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 111
    iget-object v6, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    iget v9, p1, Landroid/graphics/Rect;->right:I

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 112
    iget-object v6, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p1, Landroid/graphics/Rect;->right:I

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    .line 113
    iget-object v6, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p1, Landroid/graphics/Rect;->right:I

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    return-void
.end method

.method public needsApplySurfaceChanges()Z
    .locals 4

    .line 187
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox;->useFullWindowSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->needsApplySurfaceChanges()Z

    move-result p0

    return p0

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 191
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->needsApplySurfaceChanges()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public notIntersectsOrFullyContains(Landroid/graphics/Rect;)Z
    .locals 9

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_3

    aget-object v7, v0, v3

    .line 147
    invoke-static {v7}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->-$$Nest$fgetmLayoutFrameGlobal(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Landroid/graphics/Rect;

    move-result-object v7

    .line 148
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 151
    :cond_0
    invoke-static {v7, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 154
    :cond_1
    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_2

    return v6

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    add-int/2addr v4, v5

    .line 159
    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length p0, p0

    if-ne v4, p0, :cond_4

    return v6

    :cond_4
    return v2
.end method

.method public onMovedToDisplay(I)V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 218
    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/Letterbox;->setSurfaceDisplayID(Lcom/android/server/wm/Letterbox$LetterboxSurface;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mFullWindowSurface:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Letterbox;->setSurfaceDisplayID(Lcom/android/server/wm/Letterbox$LetterboxSurface;I)V

    return-void
.end method

.method public final setSurfaceDisplayID(Lcom/android/server/wm/Letterbox$LetterboxSurface;I)V
    .locals 0

    .line 224
    invoke-static {p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->-$$Nest$fgetmInputInterceptor(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 225
    invoke-static {p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->-$$Nest$fgetmInputInterceptor(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/Letterbox$InputInterceptor;->-$$Nest$fgetmWindowHandle(Lcom/android/server/wm/Letterbox$InputInterceptor;)Landroid/view/InputWindowHandle;

    move-result-object p0

    iput p2, p0, Landroid/view/InputWindowHandle;->displayId:I

    :cond_0
    return-void
.end method

.method public final useFullWindowSurface()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->shouldLetterboxHaveRoundedCorners()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 234
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->hasWallpaperBackgroundForLetterbox()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
