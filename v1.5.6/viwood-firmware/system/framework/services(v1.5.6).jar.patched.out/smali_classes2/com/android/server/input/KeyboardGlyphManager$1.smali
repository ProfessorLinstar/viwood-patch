.class public Lcom/android/server/input/KeyboardGlyphManager$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyboardGlyphManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/KeyboardGlyphManager;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardGlyphManager;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/server/input/KeyboardGlyphManager$1;->this$0:Lcom/android/server/input/KeyboardGlyphManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager$1;->this$0:Lcom/android/server/input/KeyboardGlyphManager;

    invoke-static {p0}, Lcom/android/server/input/KeyboardGlyphManager;->-$$Nest$mresetMaps(Lcom/android/server/input/KeyboardGlyphManager;)V

    return-void
.end method
