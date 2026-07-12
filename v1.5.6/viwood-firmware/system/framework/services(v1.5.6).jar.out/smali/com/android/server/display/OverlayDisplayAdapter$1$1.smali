.class public Lcom/android/server/display/OverlayDisplayAdapter$1$1;
.super Landroid/database/ContentObserver;
.source "OverlayDisplayAdapter.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/OverlayDisplayAdapter$1;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter$1;Landroid/os/Handler;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$1$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$1;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$1;

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->-$$Nest$mupdateOverlayDisplayDevices(Lcom/android/server/display/OverlayDisplayAdapter;)V

    return-void
.end method
