.class public Lcom/android/server/UiModeManagerService$2;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Lcom/android/server/UiModeManagerService$IntProperty;


# instance fields
.field public mCurrentModeTypeValue:I


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 202
    iput p1, p0, Lcom/android/server/UiModeManagerService$2;->mCurrentModeTypeValue:I

    return-void
.end method


# virtual methods
.method public get()I
    .locals 0

    .line 206
    iget p0, p0, Lcom/android/server/UiModeManagerService$2;->mCurrentModeTypeValue:I

    return p0
.end method

.method public set(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/android/server/UiModeManagerService$2;->mCurrentModeTypeValue:I

    .line 213
    invoke-static {}, Landroid/app/UiModeManager;->invalidateCurrentModeTypeCache()V

    return-void
.end method
