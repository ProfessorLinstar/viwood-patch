.class public Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;
.super Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;
.source "UsbGadgetHidl.java"


# instance fields
.field public mChargingFunctions:Z

.field public mFunctions:J

.field public mRequest:I

.field public final synthetic this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    invoke-direct {p0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;Lcom/android/internal/util/IndentingPrintWriter;IJZ)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    invoke-direct {p0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback$Stub;-><init>()V

    .line 233
    iput p3, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mRequest:I

    .line 234
    iput-wide p4, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mFunctions:J

    .line 235
    iput-boolean p6, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mChargingFunctions:Z

    return-void
.end method


# virtual methods
.method public getCurrentUsbFunctionsCb(JI)V
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    invoke-static {p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->-$$Nest$fgetmDeviceManager(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentUsbFunctionsCb(JI)V

    return-void
.end method

.method public getUsbSpeedCb(I)V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    invoke-static {p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->-$$Nest$fgetmDeviceManager(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->getUsbSpeedCb(I)V

    return-void
.end method

.method public setCurrentUsbFunctionsCb(JI)V
    .locals 9

    .line 241
    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    invoke-static {v0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->-$$Nest$fgetmDeviceManager(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v1

    iget v5, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mRequest:I

    iget-wide v6, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mFunctions:J

    iget-boolean v8, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$UsbGadgetCallback;->mChargingFunctions:Z

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentUsbFunctionsCb(JIIJZ)V

    return-void
.end method
