.class public Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;
.super Ljava/lang/Object;
.source "ComprehensiveCountryDetector.java"

# interfaces
.implements Landroid/location/CountryListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .locals 2

    .line 141
    sget-boolean v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CountryDetector"

    const-string v1, "Country detected via LocationBasedCountryDetector"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    invoke-static {v0, p1}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->-$$Nest$fputmCountryFromLocation(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;Landroid/location/Country;)V

    .line 144
    iget-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->-$$Nest$mdetectCountry(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;

    .line 145
    iget-object p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;

    invoke-static {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->-$$Nest$mstopLocationBasedDetector(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V

    return-void
.end method
