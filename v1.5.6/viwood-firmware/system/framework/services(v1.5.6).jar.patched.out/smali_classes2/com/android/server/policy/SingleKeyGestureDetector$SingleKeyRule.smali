.class public abstract Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.super Ljava/lang/Object;
.source "SingleKeyGestureDetector.java"


# instance fields
.field public final mKeyCode:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmKeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldInterceptKey(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->shouldInterceptKey(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 176
    :cond_0
    instance-of v1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 177
    check-cast p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 178
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    iget p1, p1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getLongPressTimeoutMs()J
    .locals 2

    .line 134
    sget-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultLongPressTimeout:J

    return-wide v0
.end method

.method public abstract getMaxMultiPressCount()I
.end method

.method public getVeryLongPressTimeoutMs()J
    .locals 2

    .line 146
    sget-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultVeryLongPressTimeout:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    .line 185
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    return p0
.end method

.method public onKeyUp(JIIII)V
    .locals 0

    .line 0
    return-void
.end method

.method public onLongPress(J)V
    .locals 0

    .line 0
    return-void
.end method

.method public onMultiPress(JII)V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract onPress(JI)V
.end method

.method public onVeryLongPress(J)V
    .locals 0

    .line 0
    return-void
.end method

.method public final shouldInterceptKey(I)Z
    .locals 0

    .line 91
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public supportLongPress()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public supportVeryLongPress()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mKeyCode:I

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", LongPress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", VeryLongPress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", MaxMultiPressCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
