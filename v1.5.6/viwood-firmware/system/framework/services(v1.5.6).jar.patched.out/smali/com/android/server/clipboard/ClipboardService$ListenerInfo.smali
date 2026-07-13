.class public Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
.super Ljava/lang/Object;
.source "ClipboardService.java"


# instance fields
.field public final mAttributionTag:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput p2, p0, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    .line 292
    iput-object p3, p0, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    .line 293
    iput-object p4, p0, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mAttributionTag:Ljava/lang/String;

    return-void
.end method
