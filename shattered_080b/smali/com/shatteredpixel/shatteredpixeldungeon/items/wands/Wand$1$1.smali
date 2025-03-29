.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1$1;
.super Ljava/lang/Object;
.source "Wand.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1;->onSelect(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$curWand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1;Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1$1;->val$curWand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1$1;->val$curWand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->wandUsed()V

    return-void
.end method
