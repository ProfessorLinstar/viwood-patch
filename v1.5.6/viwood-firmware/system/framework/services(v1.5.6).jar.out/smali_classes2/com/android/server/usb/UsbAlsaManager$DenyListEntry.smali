.class public Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# instance fields
.field public final mFlags:I

.field public final mProductId:I

.field public final mVendorId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;->mVendorId:I

    .line 104
    iput p2, p0, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;->mProductId:I

    .line 105
    iput p3, p0, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;->mFlags:I

    return-void
.end method
