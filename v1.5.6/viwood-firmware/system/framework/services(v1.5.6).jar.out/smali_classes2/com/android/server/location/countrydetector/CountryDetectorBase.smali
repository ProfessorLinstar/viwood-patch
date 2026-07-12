.class public abstract Lcom/android/server/location/countrydetector/CountryDetectorBase;
.super Ljava/lang/Object;
.source "CountryDetectorBase.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDetectedCountry:Landroid/location/Country;

.field public final mHandler:Landroid/os/Handler;

.field public mListener:Landroid/location/CountryListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "CountryDetector"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mContext:Landroid/content/Context;

    .line 43
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract detectCountry()Landroid/location/Country;
.end method

.method public notifyListener(Landroid/location/Country;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    if-eqz p0, :cond_0

    .line 71
    invoke-interface {p0, p1}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    :cond_0
    return-void
.end method

.method public setCountryListener(Landroid/location/CountryListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    return-void
.end method

.method public abstract stop()V
.end method
