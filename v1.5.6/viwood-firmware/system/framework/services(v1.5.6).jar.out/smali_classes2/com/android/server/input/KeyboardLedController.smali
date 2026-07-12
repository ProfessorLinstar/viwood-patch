.class public final Lcom/android/server/input/KeyboardLedController;
.super Ljava/lang/Object;
.source "KeyboardLedController.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public final mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

.field public final mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

.field public mMicrophoneMuteChangedIntentReceiver:Landroid/content/BroadcastReceiver;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;

.field public mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field public mVolumeMuteIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$M7Y2jSMgjsEFqeSkQBUoRJOYDRI(Lcom/android/server/input/KeyboardLedController;Landroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLedController;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/input/KeyboardLedController;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/android/server/input/KeyboardLedController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/KeyboardLedController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/input/NativeInputManagerService;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

    .line 62
    new-instance v0, Lcom/android/server/input/KeyboardLedController$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/KeyboardLedController$1;-><init>(Lcom/android/server/input/KeyboardLedController;)V

    iput-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mMicrophoneMuteChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    new-instance v0, Lcom/android/server/input/KeyboardLedController$2;

    invoke-direct {v0, p0}, Lcom/android/server/input/KeyboardLedController$2;-><init>(Lcom/android/server/input/KeyboardLedController;)V

    iput-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mVolumeMuteIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mContext:Landroid/content/Context;

    .line 85
    iput-object p3, p0, Lcom/android/server/input/KeyboardLedController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 86
    new-instance p1, Landroid/os/Handler;

    new-instance p3, Lcom/android/server/input/KeyboardLedController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/server/input/KeyboardLedController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyboardLedController;)V

    invoke-direct {p1, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 214
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/input/KeyboardLedController;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " keyboard mic mute lights"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p1, 0x0

    move v2, p1

    .line 217
    :goto_0
    iget-object v3, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const-string v4, " "

    if-ge v2, v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice;

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0, v3}, Lcom/android/server/input/KeyboardLedController;->getKeyboardMicMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/lights/Light;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/input/KeyboardLedController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " keyboard volume mute lights"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 226
    :goto_1
    iget-object v2, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p0, v2}, Lcom/android/server/input/KeyboardLedController;->getKeyboardVolumeMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/lights/Light;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 231
    :cond_1
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getKeyboardMicMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;
    .locals 2

    .line 140
    invoke-virtual {p1}, Landroid/view/InputDevice;->getLightsManager()Landroid/hardware/lights/LightsManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/lights/LightsManager;->getLights()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/lights/Light;

    .line 141
    invoke-virtual {p1}, Landroid/hardware/lights/Light;->getType()I

    move-result v0

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/hardware/lights/Light;->hasBrightnessControl()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getKeyboardVolumeMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;
    .locals 2

    .line 150
    invoke-virtual {p1}, Landroid/view/InputDevice;->getLightsManager()Landroid/hardware/lights/LightsManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/lights/LightsManager;->getLights()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/lights/Light;

    .line 151
    invoke-virtual {p1}, Landroid/hardware/lights/Light;->getType()I

    move-result v0

    const/16 v1, 0x2715

    if-ne v0, v1, :cond_0

    .line 152
    invoke-virtual {p1}, Landroid/hardware/lights/Light;->hasBrightnessControl()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    return v1

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLedController;->updateVolumeMuteLedState()V

    return v2

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLedController;->updateMicMuteLedState()V

    return v2

    .line 92
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_3

    aget v3, p1, v1

    .line 93
    invoke-virtual {p0, v3}, Lcom/android/server/input/KeyboardLedController;->onInputDeviceAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLedController;->onInputDeviceChanged(I)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/input/KeyboardLedController;->getKeyboardMicMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 203
    iget-object v2, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/input/KeyboardLedController;->getKeyboardVolumeMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    iget-object p1, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 208
    iget-object p0, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 191
    iget-object p0, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public systemRunning()V
    .locals 10

    .line 161
    iget-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorPrivacyManager;

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorPrivacyManager;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 163
    iget-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mInputManager:Landroid/hardware/input/InputManager;

    .line 164
    iget-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mAudioManager:Landroid/media/AudioManager;

    .line 165
    iget-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 166
    iget-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/input/KeyboardLedController;->mInputManager:Landroid/hardware/input/InputManager;

    .line 167
    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    const/4 v2, 0x1

    .line 166
    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    iget-object v2, p0, Lcom/android/server/input/KeyboardLedController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/input/KeyboardLedController;->mMicrophoneMuteChangedIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v0, "android.media.action.MICROPHONE_MUTE_CHANGED"

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 175
    iget-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/input/KeyboardLedController;->mVolumeMuteIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v1, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v7, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    move-object v6, v4

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final updateMicMuteLedState()V
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v2, 0x1

    .line 110
    invoke-virtual {v0, v2}, Landroid/hardware/SensorPrivacyManager;->areAnySensorPrivacyTogglesEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 112
    :goto_1
    iget-object v2, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 113
    iget-object v2, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;

    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I

    move-result v3

    .line 116
    invoke-virtual {p0, v2}, Lcom/android/server/input/KeyboardLedController;->getKeyboardMicMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 118
    iget-object v4, p0, Lcom/android/server/input/KeyboardLedController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-virtual {v2}, Landroid/hardware/lights/Light;->getId()I

    move-result v2

    invoke-interface {v4, v3, v2, v0}, Lcom/android/server/input/NativeInputManagerService;->setLightColor(III)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final updateVolumeMuteLedState()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/android/server/input/KeyboardLedController;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 127
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;

    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {v2}, Landroid/view/InputDevice;->getId()I

    move-result v3

    .line 131
    invoke-virtual {p0, v2}, Lcom/android/server/input/KeyboardLedController;->getKeyboardVolumeMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 133
    iget-object v4, p0, Lcom/android/server/input/KeyboardLedController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-virtual {v2}, Landroid/hardware/lights/Light;->getId()I

    move-result v2

    invoke-interface {v4, v3, v2, v0}, Lcom/android/server/input/NativeInputManagerService;->setLightColor(III)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
