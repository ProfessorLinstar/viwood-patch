.class public Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$3;
.super Ljava/util/TimerTask;
.source "ComprehensiveCountryDetector.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 432
    sget-boolean v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 433
    const-string v0, "CountryDetector"

    const-string/jumbo v1, "periodic location refresh event. Starts detecting Country code"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$3;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 436
    invoke-static {p0, v0, v1}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->-$$Nest$mdetectCountry(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;

    return-void
.end method
