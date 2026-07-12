.class public Lcom/android/server/clipboard/ClipboardService;
.super Lcom/android/server/SystemService;
.source "ClipboardService.java"


# static fields
.field public static final CLIP_DATA_TYPES_UNKNOWN:[I

.field public static final DEFAULT_CLIPBOARD_TIMEOUT_MILLIS:J = 0x36ee80L


# instance fields
.field public mAllowVirtualDeviceSilos:Z

.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

.field public final mClipboardMonitor:Ljava/util/function/Consumer;

.field public final mClipboards:Landroid/util/SparseArrayMap;

.field public final mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public mMaxClassificationLength:I

.field public final mPermissionOwner:Landroid/os/IBinder;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public mShowAccessNotifications:Z

.field public final mUgm:Landroid/app/IUriGrantsManager;

.field public final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public final mUm:Landroid/os/IUserManager;

.field public final mVdm:Landroid/companion/virtual/VirtualDeviceManager;

.field public final mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

.field public final mWm:Lcom/android/server/wm/WindowManagerInternal;

.field public final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$-iVajhu1BdDLwVL21Gia1rYVqHs(Landroid/content/ClipData;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$5ztocsQ0UcPtrhccM09yKp3YwrI(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->lambda$new$0(Landroid/content/ClipData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7KoTDMHoMReNv9FaUWUQ84N8AqY(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->lambda$new$1(Landroid/content/ClipData;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i-TpVE8l_CLZQqJ0xPbAIb9y5rw(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/view/textclassifier/TextClassifier;)V
    .locals 3

    .line 1612
    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;-><init>(I)V

    new-instance v1, Landroid/view/textclassifier/TextClassificationContext$Builder;

    const-string v2, "clipboard"

    invoke-direct {v1, p0, v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object p0

    .line 1615
    invoke-virtual {v0, p0}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->setEventContext(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    const-string/jumbo v0, "source_package"

    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mPrimaryClipPackage:Ljava/lang/String;

    .line 1619
    invoke-static {v0, p1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 1618
    invoke-virtual {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    .line 1620
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;->build()Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;

    move-result-object p0

    .line 1621
    invoke-interface {p2, p0}, Landroid/view/textclassifier/TextClassifier;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jJFv3zAvb_A-0-b2Lx2yX-CeeW8(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;ILandroid/util/ArraySet;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->lambda$showAccessNotificationLocked$5(Ljava/lang/String;ILandroid/util/ArraySet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kjkWPqxIFXcn85FolUIVmCDrYVA(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/clipboard/ClipboardService;->lambda$startClassificationLocked$4(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$y1KAIyB809nPOPX3NCfiDWMeAGE(Lcom/android/server/clipboard/ClipboardService;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->lambda$new$3(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmClipboards(Lcom/android/server/clipboard/ClipboardService;)Landroid/util/SparseArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWorkerHandler(Lcom/android/server/clipboard/ClipboardService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddActiveOwnerLocked(Lcom/android/server/clipboard/ClipboardService;IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->addActiveOwnerLocked(IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckDataOwner(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkDataOwner(Landroid/content/ClipData;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;Ljava/lang/String;III)Z
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;III)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mclipboardAccessAllowed(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;Ljava/lang/String;IIIZ)Z
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;IIIZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetClipboardLocked(Lcom/android/server/clipboard/ClipboardService;II)Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetIntendingDeviceId(Lcom/android/server/clipboard/ClipboardService;II)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingDeviceId(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetIntendingUid(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUid(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetIntendingUserId(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUserId(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDeviceLocked(Lcom/android/server/clipboard/ClipboardService;II)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->isDeviceLocked(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->notifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleWriteClipDataStats(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->scheduleWriteClipDataStats(Landroid/content/ClipData;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;IILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Landroid/content/ClipData;IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowAccessNotificationLocked(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$Clipboard;I)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/clipboard/ClipboardService;->showAccessNotificationLocked(Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$Clipboard;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 155
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/clipboard/ClipboardService;->CLIP_DATA_TYPES_UNKNOWN:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 176
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    const/4 p1, 0x1

    .line 180
    iput-boolean p1, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    .line 183
    iput-boolean p1, p0, Lcom/android/server/clipboard/ClipboardService;->mAllowVirtualDeviceSilos:Z

    const/16 p1, 0x190

    .line 187
    iput p1, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    .line 190
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    .line 198
    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 199
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 200
    const-class p1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 201
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    .line 203
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    :goto_0
    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    .line 206
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 207
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IUserManager;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    .line 208
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 209
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 210
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    .line 211
    const-string v0, "clipboard"

    invoke-interface {p1, v0}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 212
    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 213
    sget-boolean p1, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz p1, :cond_1

    .line 214
    new-instance p1, Lcom/android/server/clipboard/EmulatorClipboardMonitor;

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-direct {p1, v1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;-><init>(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboardMonitor:Ljava/util/function/Consumer;

    goto :goto_1

    .line 223
    :cond_1
    sget-boolean p1, Landroid/os/Build;->IS_ARC:Z

    if-eqz p1, :cond_2

    .line 224
    new-instance p1, Lcom/android/server/clipboard/ArcClipboardMonitor;

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-direct {p1, v1}, Lcom/android/server/clipboard/ArcClipboardMonitor;-><init>(Ljava/util/function/BiConsumer;)V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboardMonitor:Ljava/util/function/Consumer;

    goto :goto_1

    .line 228
    :cond_2
    new-instance p1, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda2;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboardMonitor:Ljava/util/function/Consumer;

    .line 231
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->updateConfig()V

    .line 233
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    .line 232
    invoke-static {v0, p1, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 235
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ClipboardService"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 237
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method public static isText(Landroid/content/ClipData;)Z
    .locals 3

    .line 1574
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    return v1

    .line 1577
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    .line 1579
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1580
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    return v1
.end method


# virtual methods
.method public final addActiveOwnerLocked(IILjava/lang/String;)V
    .locals 9

    .line 1245
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 1246
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 1247
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const-wide/16 v3, 0x0

    move v5, p1

    move-object v2, p3

    .line 1249
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;JII)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 1253
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1255
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1256
    iget-object p2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->activePermissionOwners:Ljava/util/HashSet;

    .line 1257
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1258
    iget-object p2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    .line 1260
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v0, p3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    iget v1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    .line 1261
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 1260
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->grantItemPermission(Landroid/content/ClipData$Item;ILjava/lang/String;I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1263
    :cond_0
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 1250
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Calling uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not own package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1253
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1254
    throw p0
.end method

.method public final applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V
    .locals 0

    .line 1156
    iput-object p4, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    .line 1157
    iget-object p4, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {p4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/content/ClipDescription;->setConfidenceScores(Ljava/util/Map;)V

    .line 1158
    invoke-virtual {p3}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1159
    iget-object p2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/ClipData$Item;->setTextLinks(Landroid/view/textclassifier/TextLinks;)V

    .line 1161
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V

    return-void
.end method

.method public final checkDataOwner(Landroid/content/ClipData;I)V
    .locals 3

    .line 1208
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1210
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService;->checkItemOwner(Landroid/content/ClipData$Item;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final checkItemOwner(Landroid/content/ClipData$Item;I)V
    .locals 1

    .line 1198
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1199
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwner(Landroid/net/Uri;I)V

    .line 1201
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1202
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1203
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->checkUriOwner(Landroid/net/Uri;I)V

    :cond_1
    return-void
.end method

.method public final checkUriOwner(Landroid/net/Uri;I)V
    .locals 9

    if-eqz p1, :cond_1

    .line 1183
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1185
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1188
    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1189
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 1191
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    const/4 v5, 0x0

    const/4 v7, 0x1

    move v4, p2

    .line 1188
    invoke-interface/range {v3 .. v8}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1194
    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;III)Z
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 1308
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;IIIZ)Z

    move-result p0

    return p0
.end method

.method public final clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;IIIZ)Z
    .locals 5

    .line 1324
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p4, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const/4 v0, -0x1

    .line 1326
    const-string v1, "ClipboardService"

    const/4 v2, 0x0

    if-ne p6, v0, :cond_0

    .line 1327
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Clipboard access denied to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to invalid device id"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.READ_CLIPBOARD_IN_BACKGROUND"

    invoke-virtual {v0, v3, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    .line 1338
    :cond_1
    invoke-virtual {p0, p5, p2}, Lcom/android/server/clipboard/ClipboardService;->isDefaultIme(ILjava/lang/String;)Z

    move-result v0

    :goto_0
    const/16 v4, 0x1d

    if-eq p1, v4, :cond_3

    const/16 p6, 0x1e

    if-ne p1, p6, :cond_2

    :goto_1
    move v0, v3

    goto :goto_4

    .line 1383
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown clipboard appop "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-nez v0, :cond_6

    .line 1349
    invoke-virtual {p0, p6, p4}, Lcom/android/server/clipboard/ClipboardService;->isDefaultDeviceAndUidFocused(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1350
    invoke-virtual {p0, p6, p4}, Lcom/android/server/clipboard/ClipboardService;->isVirtualDeviceAndUidFocused(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1351
    invoke-virtual {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->isInternalSysWindowAppWithWindowFocus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v3

    :cond_6
    :goto_3
    if-nez v0, :cond_7

    .line 1353
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v4, :cond_7

    .line 1360
    invoke-virtual {v4, p4, p5}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->isContentCaptureServiceForUser(II)Z

    move-result v0

    :cond_7
    if-nez v0, :cond_8

    .line 1362
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v4, :cond_8

    .line 1369
    invoke-virtual {v4, p4, p5}, Landroid/view/autofill/AutofillManagerInternal;->isAugmentedAutofillServiceForUser(II)Z

    move-result v0

    :cond_8
    if-nez v0, :cond_a

    if-eqz p6, :cond_a

    .line 1374
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v0, :cond_9

    .line 1375
    invoke-virtual {v0, p6}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceOwnerUid(I)I

    move-result p6

    if-ne p6, p4, :cond_9

    goto :goto_1

    :cond_9
    move v0, v2

    :cond_a
    :goto_4
    if-nez v0, :cond_b

    .line 1386
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Denying clipboard access to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", application is not in focus nor is it a system service for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_b
    if-eqz p7, :cond_c

    move-object p5, p3

    move p3, p4

    move-object p4, p2

    move p2, p1

    .line 1394
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 p6, 0x0

    invoke-virtual/range {p1 .. p6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_5

    :cond_c
    move p3, p4

    move-object p4, p2

    move p2, p1

    .line 1396
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0, p2, p3, p4}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result p0

    :goto_5
    if-nez p0, :cond_d

    return v3

    :cond_d
    return v2
.end method

.method public final createTextClassificationManagerAsUser(I)Landroid/view/textclassifier/TextClassificationManager;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 1627
    const-class p1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassificationManager;

    return-object p0
.end method

.method public final deviceUsesDefaultClipboard(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 466
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 469
    invoke-virtual {p0, p1, v1}, Landroid/companion/virtual/VirtualDeviceManager;->getDevicePolicy(II)I

    move-result p0

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public final doClassification(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V
    .locals 8

    .line 1104
    new-instance v0, Landroid/view/textclassifier/TextLinks$Request$Builder;

    invoke-direct {v0, p1}, Landroid/view/textclassifier/TextLinks$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinks$Request$Builder;->build()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v0

    .line 1105
    invoke-interface {p3, v0}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    .line 1108
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1109
    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextLinks$TextLink;

    .line 1110
    :goto_0
    invoke-virtual {v3}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1111
    invoke-virtual {v3, v4}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    move-result-object v5

    .line 1112
    invoke-virtual {v3, v5}, Landroid/view/textclassifier/TextLinks$TextLink;->getConfidenceScore(Ljava/lang/String;)F

    move-result v6

    const/4 v7, 0x0

    .line 1113
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_1

    .line 1114
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1119
    :cond_2
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1120
    :try_start_0
    invoke-virtual {p0, p4, p5}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1122
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1124
    :cond_3
    iget-object v5, v3, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-ne v5, p2, :cond_5

    .line 1125
    invoke-virtual {p0, v3, v1, v0, p3}, Lcom/android/server/clipboard/ClipboardService;->applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V

    .line 1129
    invoke-virtual {p0, p4}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1131
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v4, v3, :cond_5

    .line 1133
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, p4, :cond_4

    .line 1135
    const-string/jumbo v6, "no_sharing_into_profile"

    invoke-virtual {p0, v6, v5}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1138
    invoke-virtual {p0, v5, p5}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1140
    invoke-virtual {p0, v5, p1}, Lcom/android/server/clipboard/ClipboardService;->hasTextLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1141
    invoke-virtual {p0, v5, v1, v0, p3}, Lcom/android/server/clipboard/ClipboardService;->applyClassificationAndSendBroadcastLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/util/ArrayMap;Landroid/view/textclassifier/TextLinks;Landroid/view/textclassifier/TextClassifier;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1149
    :cond_5
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;
    .locals 3

    .line 879
    const-string v0, "ClipboardService"

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/clipboard/ClipboardService$Clipboard;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 882
    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {v2, p1}, Landroid/os/IUserManager;->isUserRunning(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 883
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getClipboardLocked called with not running userId "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 890
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-eqz v2, :cond_1

    .line 891
    invoke-virtual {v2, p2}, Landroid/companion/virtual/VirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 892
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getClipboardLocked called with invalid (possibly released) deviceId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 896
    :cond_1
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$Clipboard;

    invoke-direct {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService$Clipboard;-><init>(II)V

    .line 897
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 887
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RemoteException calling UserManager: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method public final getIntendingDeviceId(II)I
    .locals 5

    .line 416
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 420
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceIdsForUid(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 422
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 423
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/clipboard/ClipboardService;->mAllowVirtualDeviceSilos:Z

    const/4 v4, -0x1

    if-nez v3, :cond_2

    .line 424
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    .line 425
    :cond_1
    monitor-exit v2

    return v4

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 427
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 433
    invoke-virtual {p0, v3}, Lcom/android/server/clipboard/ClipboardService;->deviceUsesDefaultClipboard(I)Z

    move-result v3

    if-nez v3, :cond_3

    move v2, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_0
    if-nez p1, :cond_6

    if-eqz v2, :cond_5

    return v1

    :cond_5
    return v4

    .line 450
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->deviceUsesDefaultClipboard(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_1

    :cond_7
    move v3, p1

    .line 454
    :goto_1
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {v4, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceOwnerUid(I)I

    move-result v4

    if-eq v4, p2, :cond_a

    .line 455
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    if-nez v3, :cond_8

    if-eqz v2, :cond_8

    goto :goto_2

    .line 461
    :cond_8
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->deviceUsesDefaultClipboard(I)Z

    move-result p0

    if-eqz p0, :cond_9

    return v1

    :cond_9
    return p1

    :cond_a
    :goto_2
    return v3

    .line 427
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getIntendingUid(Ljava/lang/String;I)I
    .locals 0

    .line 401
    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->getIntendingUserId(Ljava/lang/String;I)I

    move-result p0

    .line 402
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 401
    invoke-static {p0, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0
.end method

.method public final getIntendingUserId(Ljava/lang/String;I)I
    .locals 10

    .line 379
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 380
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 381
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 387
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v7, 0x2

    const-string v8, "checkClipboardServiceCallingUser"

    const/4 v6, 0x0

    move-object v9, p1

    move v5, p2

    .line 386
    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public getRelatedProfiles(I)Ljava/util/List;
    .locals 4

    .line 904
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 906
    :try_start_0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    const/4 v2, 0x1

    invoke-interface {p0, p1, v2}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 908
    :try_start_1
    const-string p1, "ClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception calling UserManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 912
    throw p0
.end method

.method public final getToastContexts(Lcom/android/server/clipboard/ClipboardService$Clipboard;I)Landroid/util/ArraySet;
    .locals 5

    .line 1522
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1523
    iget v1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 1527
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez p2, :cond_2

    .line 1530
    iget p1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    if-eqz p1, :cond_7

    :cond_2
    iget-object p1, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez p1, :cond_3

    goto/16 :goto_1

    .line 1538
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 1539
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {v1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDisplayIdsForDevice(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 1540
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v2

    .line 1542
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1543
    invoke-virtual {p1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1545
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    const/4 v2, 0x0

    .line 1550
    :goto_0
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1551
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1553
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1556
    :cond_6
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1557
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getToastContexts Couldn\'t find any VirtualDisplays for VirtualDevice "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ClipboardService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    return-object v0
.end method

.method public final grantItemPermission(Landroid/content/ClipData$Item;ILjava/lang/String;I)V
    .locals 1

    .line 1234
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1235
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 1237
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1238
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1239
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public final grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 11

    if-eqz p1, :cond_1

    .line 1216
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1218
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1220
    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 1221
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 1223
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v9

    const/4 v8, 0x1

    move v5, p2

    move-object v6, p3

    move v10, p4

    .line 1220
    invoke-interface/range {v3 .. v10}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1228
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1229
    throw p0

    .line 1228
    :catch_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final hasRestriction(Ljava/lang/String;I)Z
    .locals 0

    .line 921
    :try_start_0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mUm:Landroid/os/IUserManager;

    invoke-interface {p0, p1, p2}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 923
    const-string p1, "ClipboardService"

    const-string p2, "Remote Exception calling UserManager.getUserRestrictions: "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final hasTextLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1166
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1167
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result p0

    if-lez p0, :cond_0

    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 1168
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final isDefaultDeviceAndUidFocused(II)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1403
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isDefaultIme(ILjava/lang/String;)Z
    .locals 1

    .line 1416
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_input_method"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 1418
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1419
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 1423
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1424
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public final isDeviceLocked(II)Z
    .locals 3

    .line 1172
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1174
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    if-eqz p0, :cond_0

    .line 1176
    invoke-virtual {p0, p1, p2}, Landroid/app/KeyguardManager;->isDeviceLocked(II)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 1178
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1179
    throw p0
.end method

.method public final isInternalSysWindowAppWithWindowFocus(Ljava/lang/String;)Z
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 351
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isVirtualDeviceAndUidFocused(II)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1407
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1410
    :cond_0
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v1

    .line 1411
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v2, v1}, Landroid/companion/virtual/VirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 1412
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final synthetic lambda$new$0(Landroid/content/ClipData;)V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 216
    :try_start_0
    invoke-virtual {p0, v1, v1}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    .line 218
    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 221
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$new$1(Landroid/content/ClipData;Ljava/lang/Integer;)V
    .locals 0

    .line 225
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternal(Landroid/content/ClipData;I)V

    return-void
.end method

.method public final synthetic lambda$new$3(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 233
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->updateConfig()V

    return-void
.end method

.method public final synthetic lambda$showAccessNotificationLocked$5(Ljava/lang/String;ILandroid/util/ArraySet;)V
    .locals 4

    .line 1479
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    .line 1480
    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 1479
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1482
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x1040713

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1483
    const-string p2, "ClipboardService"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :goto_0
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-ge v1, p2, :cond_1

    .line 1485
    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    .line 1487
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/util/SafetyProtectionUtils;->shouldShowSafetyProtectionResources(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1488
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x10800b5

    .line 1489
    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1491
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 1490
    invoke-static {p2, v3, p1, v2, v0}, Landroid/widget/Toast;->makeCustomToastWithIcon(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)Landroid/widget/Toast;

    move-result-object p2

    goto :goto_1

    .line 1495
    :cond_0
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1494
    invoke-static {p2, v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    .line 1498
    :goto_1
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final synthetic lambda$startClassificationLocked$4(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V
    .locals 0

    .line 1097
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/clipboard/ClipboardService;->doClassification(Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V

    return-void
.end method

.method public final notifyTextClassifierLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Ljava/lang/String;I)V
    .locals 2

    .line 1587
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1590
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1594
    :cond_1
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    invoke-static {v0}, Lcom/android/server/clipboard/ClipboardService;->isText(Landroid/content/ClipData;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1597
    :cond_2
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-nez v0, :cond_3

    goto :goto_0

    .line 1603
    :cond_3
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mWm:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowManagerInternal;->isUidFocused(I)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 1607
    :cond_4
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_5

    :goto_0
    return-void

    .line 1610
    :cond_5
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1611
    new-instance p0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/view/textclassifier/TextClassifier;)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 242
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService-IA;)V

    const-string v1, "clipboard"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/server/clipboard/ClipboardService;->registerVirtualDeviceListener()V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboards:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 267
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final registerVirtualDeviceListener()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$1;

    invoke-direct {v0, p0}, Lcom/android/server/clipboard/ClipboardService$1;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    iput-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    .line 260
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mVdm:Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    invoke-virtual {v0, v1, p0}, Landroid/companion/virtual/VirtualDeviceManager;->registerVirtualDeviceListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final revokeItemPermission(Landroid/content/ClipData$Item;I)V
    .locals 1

    .line 1282
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 1285
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1286
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1287
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->revokeUriPermission(Landroid/net/Uri;I)V

    :cond_1
    return-void
.end method

.method public final revokeUriPermission(Landroid/net/Uri;I)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1268
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1270
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1272
    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object p0, p0, Lcom/android/server/clipboard/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 1273
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 1275
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p1, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p1

    const/4 p2, 0x1

    .line 1272
    invoke-interface {v2, p0, v3, p2, p1}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1278
    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final revokeUris(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V
    .locals 4

    .line 1292
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1295
    :cond_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1297
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget v3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/clipboard/ClipboardService;->revokeItemPermission(Landroid/content/ClipData$Item;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final scheduleWriteClipDataStats(Landroid/content/ClipData;II)V
    .locals 0

    .line 0
    return-void
.end method

.method public final sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V
    .locals 12

    .line 1041
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1042
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1046
    :try_start_0
    iget-object v4, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    .line 1047
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    .line 1049
    iget-object v7, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mAttributionTag:Ljava/lang/String;

    iget v9, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    .line 1054
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    iget v11, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x1d

    move-object v5, p0

    .line 1049
    :try_start_1
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/clipboard/ClipboardService;->clipboardAccessAllowed(ILjava/lang/String;Ljava/lang/String;III)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1056
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Landroid/content/IOnPrimaryClipChangedListener;

    .line 1057
    invoke-interface {p0}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-object v5, p0

    goto :goto_2

    .line 1065
    :goto_1
    iget-object p1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1066
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1067
    throw p0

    :catch_1
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object p0, v5

    goto :goto_0

    .line 1065
    :cond_1
    iget-object p0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1066
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setPrimaryClipInternal(Landroid/content/ClipData;I)V
    .locals 3

    .line 930
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 931
    :try_start_0
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Landroid/content/ClipData;IILjava/lang/String;)V

    .line 932
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setPrimaryClipInternalLocked(Landroid/content/ClipData;IILjava/lang/String;)V
    .locals 6

    if-nez p3, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mClipboardMonitor:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 942
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 945
    invoke-virtual {p0, v0, p3}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_3

    .line 949
    :cond_1
    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    .line 952
    invoke-virtual {p0, v0}, Lcom/android/server/clipboard/ClipboardService;->getRelatedProfiles(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 954
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 956
    const-string/jumbo v4, "no_cross_profile_copy_paste"

    invoke-virtual {p0, v4, v0}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    .line 971
    :cond_3
    new-instance v4, Landroid/content/ClipData;

    invoke-direct {v4, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    .line 972
    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_0
    if-ltz p1, :cond_4

    .line 973
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-virtual {v4, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/content/ClipData$Item;)V

    invoke-virtual {v4, p1, v3}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 975
    :cond_4
    invoke-virtual {v4, v0}, Landroid/content/ClipData;->fixUrisLight(I)V

    move-object p1, v4

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_6

    .line 978
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-eq v4, v0, :cond_5

    .line 980
    const-string/jumbo v5, "no_sharing_into_profile"

    invoke-virtual {p0, v5, v4}, Lcom/android/server/clipboard/ClipboardService;->hasRestriction(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 983
    invoke-virtual {p0, v4, p3}, Lcom/android/server/clipboard/ClipboardService;->getClipboardLocked(II)Lcom/android/server/clipboard/ClipboardService$Clipboard;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 985
    invoke-virtual {p0, v4, p1, p2, p4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public final setPrimaryClipInternalLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V
    .locals 2

    .line 1005
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz p2, :cond_0

    .line 1007
    iget v1, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->startClassificationLocked(Landroid/content/ClipData;II)V

    .line 1010
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService;->setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V

    return-void
.end method

.method public final setPrimaryClipInternalNoClassifyLocked(Lcom/android/server/clipboard/ClipboardService$Clipboard;Landroid/content/ClipData;ILjava/lang/String;)V
    .locals 1

    .line 1016
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->revokeUris(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V

    .line 1017
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-nez p2, :cond_0

    .line 1018
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_0

    return-void

    .line 1021
    :cond_0
    iput-object p2, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    .line 1022
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1023
    iget-object v0, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedTextClassifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz p2, :cond_1

    .line 1025
    iput p3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    .line 1026
    iput-object p4, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mPrimaryClipPackage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 p3, 0x270f

    .line 1028
    iput p3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    const/4 p3, 0x0

    .line 1029
    iput-object p3, p1, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mPrimaryClipPackage:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_2

    .line 1032
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroid/content/ClipDescription;->setTimestamp(J)V

    .line 1037
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/ClipboardService;->sendClipChangedBroadcast(Lcom/android/server/clipboard/ClipboardService$Clipboard;)V

    return-void
.end method

.method public final showAccessNotificationLocked(Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$Clipboard;I)V
    .locals 3

    .line 1438
    iget-object v0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1441
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1443
    iget-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    .line 1441
    const-string v2, "clipboard_show_access_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1447
    :cond_1
    iget v0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->primaryClipUid:I

    invoke-static {p2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1451
    :cond_2
    invoke-virtual {p0, p3, p1}, Lcom/android/server/clipboard/ClipboardService;->isDefaultIme(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1454
    :cond_3
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mContentCaptureInternal:Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v0, :cond_4

    .line 1455
    invoke-virtual {v0, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->isContentCaptureServiceForUser(II)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1458
    :cond_4
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mAutofillInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v0, :cond_5

    .line 1459
    invoke-virtual {v0, p2, p3}, Landroid/view/autofill/AutofillManagerInternal;->isAugmentedAutofillServiceForUser(II)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 1462
    :cond_5
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.permission.SUPPRESS_CLIPBOARD_ACCESS_NOTIFICATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 1467
    :cond_6
    iget v0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->deviceId:I

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v1, :cond_7

    .line 1468
    invoke-virtual {v1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getDeviceOwnerUid(I)I

    move-result v0

    if-ne v0, p2, :cond_7

    goto :goto_0

    .line 1472
    :cond_7
    iget-object v0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    return-void

    .line 1476
    :cond_8
    invoke-virtual {p0, p4, p5}, Lcom/android/server/clipboard/ClipboardService;->getToastContexts(Lcom/android/server/clipboard/ClipboardService$Clipboard;I)Landroid/util/ArraySet;

    move-result-object p5

    .line 1477
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p3, p5}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;ILandroid/util/ArraySet;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1505
    iget-object p0, p4, Lcom/android/server/clipboard/ClipboardService$Clipboard;->mNotifiedUids:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public final startClassificationLocked(Landroid/content/ClipData;II)V
    .locals 9

    .line 1073
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1074
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v2, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    if-le v0, v2, :cond_2

    :cond_1
    move-object v4, p1

    goto :goto_2

    .line 1080
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1082
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/clipboard/ClipboardService;->createTextClassificationManagerAsUser(I)Landroid/view/textclassifier/TextClassificationManager;

    move-result-object v0

    new-instance v2, Landroid/view/textclassifier/TextClassificationContext$Builder;

    .line 1085
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "clipboard"

    invoke-direct {v2, v6, v7}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v2

    .line 1083
    invoke-virtual {v0, v2}, Landroid/view/textclassifier/TextClassificationManager;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1092
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->getMaxGenerateLinksTextLength()I

    move-result v4

    if-le v2, v4, :cond_3

    .line 1093
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->setClassificationStatus(I)V

    return-void

    .line 1097
    :cond_3
    iget-object v8, p0, Lcom/android/server/clipboard/ClipboardService;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;

    move-object v2, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    move-object v5, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/clipboard/ClipboardService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/CharSequence;Landroid/content/ClipData;Landroid/view/textclassifier/TextClassifier;II)V

    invoke-virtual {v8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1090
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1091
    throw p0

    .line 1075
    :goto_2
    invoke-virtual {v4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->setClassificationStatus(I)V

    return-void
.end method

.method public final updateConfig()V
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_0
    const-string v1, "clipboard"

    const-string/jumbo v2, "show_access_notifications"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mShowAccessNotifications:Z

    .line 276
    const-string v1, "clipboard"

    const-string v2, "allow_virtualdevice_silos"

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/clipboard/ClipboardService;->mAllowVirtualDeviceSilos:Z

    .line 280
    const-string v1, "clipboard"

    const-string/jumbo v2, "max_classification_length"

    const/16 v3, 0x190

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/clipboard/ClipboardService;->mMaxClassificationLength:I

    .line 282
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
