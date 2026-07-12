.class Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# instance fields
.field public final mToken:Landroid/window/WindowContainerToken;

.field public final mUid:I


# direct methods
.method public constructor <init>(ILandroid/window/WindowContainerToken;)V
    .locals 0

    .line 9470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9471
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;->mUid:I

    .line 9472
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;->mToken:Landroid/window/WindowContainerToken;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/window/WindowContainerToken;Lcom/android/server/wm/WindowManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;-><init>(ILandroid/window/WindowContainerToken;)V

    return-void
.end method


# virtual methods
.method public getToken()Landroid/window/WindowContainerToken;
    .locals 0

    .line 9481
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;->mToken:Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method public getUid()I
    .locals 0

    .line 9476
    iget p0, p0, Lcom/android/server/wm/WindowManagerService$WindowContainerInfo;->mUid:I

    return p0
.end method
