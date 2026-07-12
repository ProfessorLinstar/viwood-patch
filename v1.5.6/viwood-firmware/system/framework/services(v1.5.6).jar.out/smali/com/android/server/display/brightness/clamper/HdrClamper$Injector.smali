.class public Lcom/android/server/display/brightness/clamper/HdrClamper$Injector;
.super Ljava/lang/Object;
.source "HdrClamper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHdrListener(Lcom/android/server/display/brightness/clamper/HdrClamper$HdrListener;Landroid/os/Handler;)Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;
    .locals 0

    .line 278
    new-instance p0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;-><init>(Lcom/android/server/display/brightness/clamper/HdrClamper$HdrListener;Landroid/os/Handler;)V

    return-object p0
.end method
