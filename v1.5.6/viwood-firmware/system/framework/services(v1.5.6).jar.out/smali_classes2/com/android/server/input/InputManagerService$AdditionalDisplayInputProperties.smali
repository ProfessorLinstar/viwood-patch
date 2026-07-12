.class public Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# instance fields
.field public mouseScalingEnabled:Z

.field public pointerIconVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3931
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->reset()V

    return-void
.end method


# virtual methods
.method public allDefaults()Z
    .locals 2

    .line 3935
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mouseScalingEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 3940
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mouseScalingEnabled:Z

    .line 3941
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    return-void
.end method
