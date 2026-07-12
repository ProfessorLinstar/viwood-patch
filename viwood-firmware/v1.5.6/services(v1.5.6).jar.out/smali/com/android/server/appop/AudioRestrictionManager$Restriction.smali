.class public final Lcom/android/server/appop/AudioRestrictionManager$Restriction;
.super Ljava/lang/Object;
.source "AudioRestrictionManager.java"


# static fields
.field public static final NO_EXCEPTIONS:Landroid/util/ArraySet;


# instance fields
.field public exceptionPackages:Landroid/util/ArraySet;

.field public mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->NO_EXCEPTIONS:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->NO_EXCEPTIONS:Landroid/util/ArraySet;

    iput-object v0, p0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/appop/AudioRestrictionManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/appop/AudioRestrictionManager$Restriction;-><init>()V

    return-void
.end method
