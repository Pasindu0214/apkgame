.class public final La/b/a/o/m/e$a$b;
.super Ljava/lang/Object;
.source "PixmapPacker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/o/m/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:La/b/a/o/m/e$a$b;

.field public b:La/b/a/o/m/e$a$b;

.field public final c:La/b/a/p/c;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/b/a/p/c;

    invoke-direct {v0}, La/b/a/p/c;-><init>()V

    iput-object v0, p0, La/b/a/o/m/e$a$b;->c:La/b/a/p/c;

    return-void
.end method
