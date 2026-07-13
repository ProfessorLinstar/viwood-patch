.class public Lcom/android/server/display/DisplayInfoProxy;
.super Ljava/lang/Object;
.source "DisplayInfoProxy.java"


# instance fields
.field public mInfo:Landroid/view/DisplayInfo;


# direct methods
.method public constructor <init>(Landroid/view/DisplayInfo;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    return-void
.end method


# virtual methods
.method public get()Landroid/view/DisplayInfo;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method public set(Landroid/view/DisplayInfo;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    .line 42
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    return-void
.end method
