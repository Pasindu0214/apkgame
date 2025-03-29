.class public La/b/a/q/a$b;
.super Ljava/lang/Object;
.source "NetJavaImpl.java"

# interfaces
.implements La/b/a/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/q/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/b/a/q/a$b;->a:Ljava/net/HttpURLConnection;

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
