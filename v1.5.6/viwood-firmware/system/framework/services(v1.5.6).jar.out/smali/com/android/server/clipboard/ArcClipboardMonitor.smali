.class public Lcom/android/server/clipboard/ArcClipboardMonitor;
.super Ljava/lang/Object;
.source "ArcClipboardMonitor.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mAndroidClipboardSetter:Ljava/util/function/BiConsumer;


# direct methods
.method public constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/clipboard/ArcClipboardMonitor;->mAndroidClipboardSetter:Ljava/util/function/BiConsumer;

    .line 47
    const-class p1, Lcom/android/server/clipboard/ArcClipboardMonitor;

    invoke-static {p1, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public accept(Landroid/content/ClipData;)V
    .locals 0

    .line 0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Landroid/content/ClipData;

    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ArcClipboardMonitor;->accept(Landroid/content/ClipData;)V

    return-void
.end method
