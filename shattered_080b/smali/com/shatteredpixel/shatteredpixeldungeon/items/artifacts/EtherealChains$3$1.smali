.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3$1;
.super Ljava/lang/Object;
.source "EtherealChains.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    return-void
.end method
