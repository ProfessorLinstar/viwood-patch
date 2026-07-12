.class public Lcom/android/server/UiModeManagerService$1;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Lcom/android/server/UiModeManagerService$IntProperty;


# instance fields
.field public mNightModeValue:I


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 148
    iput p1, p0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    return-void
.end method


# virtual methods
.method public get()I
    .locals 0

    .line 152
    iget p0, p0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    return p0
.end method

.method public set(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 159
    invoke-static {}, Landroid/app/UiModeManager;->invalidateNightModeCache()V

    return-void
.end method
