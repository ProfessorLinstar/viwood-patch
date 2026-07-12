.class public Lcom/android/server/wm/DisplayPolicy$DecorInsets;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

.field public final mTmpInfo:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)Lcom/android/server/wm/DisplayContent;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInfoForRotation(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    .line 2178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2175
    new-array v0, v0, [Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 2176
    new-instance v1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mTmpInfo:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 2179
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2180
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 2181
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    new-instance v1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static hasInsetsFrameDiff(Landroid/view/InsetsState;Landroid/view/InsetsState;I)Z
    .locals 6

    .line 2215
    invoke-virtual {p0}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_3

    .line 2216
    invoke-virtual {p0, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 2217
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    and-int/2addr v5, p2

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 2221
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getId()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2222
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v1

    .line 2227
    :cond_3
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result p0

    sub-int/2addr p0, v1

    move v0, v2

    :goto_3
    if-ltz p0, :cond_5

    .line 2228
    invoke-virtual {p1, p0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 2229
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    and-int/2addr v4, p2

    if-eqz v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 p0, p0, -0x1

    goto :goto_3

    :cond_5
    if-eq v3, v0, :cond_6

    return v1

    :cond_6
    return v2
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    const/4 v0, 0x0

    .line 2207
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2208
    aget-object v1, v1, v0

    .line 2209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    .locals 2

    .line 2186
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    aget-object v0, v0, p1

    .line 2187
    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->-$$Nest$fgetmNeedUpdate(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2188
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->update(Lcom/android/server/wm/DisplayContent;III)Landroid/view/InsetsState;

    :cond_0
    return-object v0
.end method

.method public invalidate()V
    .locals 4

    .line 2195
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    const/4 v3, 0x1

    .line 2196
    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->-$$Nest$fputmNeedUpdate(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V
    .locals 3

    .line 2201
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2202
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->set(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
