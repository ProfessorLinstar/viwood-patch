.class public Lcom/android/server/clipboard/ClipboardService$Clipboard;
.super Ljava/lang/Object;
.source "ClipboardService.java"


# instance fields
.field public final activePermissionOwners:Ljava/util/HashSet;

.field public final deviceId:I

.field public final mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

.field public final mNotifiedUids:Landroid/util/SparseBooleanArray;

.field public mPrimaryClipPackage:Ljava/lang/String;

.field public mTextClassifier:Landroid/view/textclassifier/TextClassifier;

.field public primaryClip:Landroid/content/ClipData;

.field public final primaryClipListeners:Landroid/os/RemoteCallbackList;

.field public primaryClipUid:I

.field public final userId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    const/16 v0, 0x270f

    .line 307
    iput v0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    .line 312
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    .line 318
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    .line 320
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->activePermissionOwners:Ljava/util/HashSet;

    .line 327
    iput p1, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->userId:I

    .line 328
    iput p2, p0, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    return-void
.end method
