.class public Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# instance fields
.field public aggregatedSecret:[B

.field public mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

.field public mType:I

.field public secdiscardableOnDisk:[B

.field public weaverSecret:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;-><init>()V

    return-void
.end method
